-- ***********************************
-- Sample AI handling system 
-- By Matt @serverdev.net
-- ***********************************

-- --------------------------
-- Set of functions which might be useful to all AI
-- But does not exists in standard
-- --------------------------

--print( "        * Loading Lib functions" )


-- Return true is the unit is friendly, false othervise
-- A unit is considered friendly if:
--   * the target is the host of the source monster
--   * the target belongs to the same party as the sources host
--   * the target belongs to the same guild as the sources host
function isFriendly(source, target)
	local source_host = GetChaHost(source)
	local target_host = GetChaHost(target)

	-- Target is in hosts team
	local sourceTeamID = GetChaTeamID(source_host)
	if (sourceTeamID ~= 0 and sourceTeamID == GetChaTeamID(target)) then 
		return true
	end

	-- Target is in hosts guild
	local sourceGuildID = GetChaGuildID(source_host)
	if (sourceGuildID ~= 0 and sourceGuldID == GetChaGuildID(target)) then
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
	if(map_type == 3)then -- PVP is OFF
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

--[[function npc_move(cha,range,id)
  local move_flag = Rand(20)
  
  if move_flag > 1 then return end --Only 1 / 18 chance of random movement, limiting the frequency of random movement
  
  x, y = npclooplist[id].x,npclooplist[id].y
  rx = x + range - Rand(range * 2)
  ry = y + range - Rand(range * 2)
  if is_pos_valid(cha, x, y)==0 then return end --Illegal destination for this character, then stop
  ChaMove(cha, rx, ry)
end
]]--
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

-- This happens when the opponent is a Champion
function target_is_champ(monster,target)
	-- Champion will be mostly trying to luring us so we search for a new target^^
	clear_target(monster)
end

-- This happens when the opponent is a Crus
function target_is_crus(monster,target)
	-- Whats the weak spot of a Crus? Melee! We will seal him xD
	local sklv = GetSkillLv( monster , 105 ) -- Lets Check if our Boss got the Seal Skill
	if sklv ~= 0 then 
		-- Lets Check if he is sealed already
		local seal = GetChaStateLv ( target ,STATE_GJJZ ) 
		-- Use the skill only if the character is not sealed!
		if seal == 0 then
			ChaUseSkill(monster, target, 105)
			clear_target(monster)
		end
	end
	local skill_id = select_skill(monster) 
	chaUseSkill(monster, target, skill_id) 
end

-- This happens when the opponent is a Cleric
function target_is_cleric(monster,target)
end

-- This happens when the opponent is a Seal Master
function target_is_sm(monster,target)
end

-- This happens when the opponent is a Voyager
function target_is_voy(monster,target)
end