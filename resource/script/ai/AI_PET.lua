-- --------------------------
-- AI DEDICATED TO "AI_PET"
-- --------------------------
-- AI_PET Mod is a sample of what can be done.
-- The base idea will be that the summoned pet is
-- not aggressive toward owner. Whenever it has nothing to
-- do, it will attempt to follow its master.
-- Othervise, it will try to attack the master s target.
-- The pet will teleport to the master when he's away.

-- **************************************
-- This script was edited by YellowFlash.
-- You cannot release it anywhere.
-- This credits stays here.
-- **************************************

print( "        * Loading AI_PET functions" )
AI_PET = 12

AI_CUSTOM_HANDLERS[AI_PET] = {}
AI_CUSTOM_HANDLERS[AI_PET]["has_target"] = AI_PET_has_target
AI_CUSTOM_HANDLERS[AI_PET]["no_target"] = AI_PET_no_target
AI_CUSTOM_HANDLERS[AI_PET]["tick"] = AI_PET_tick


-- This is what happen when a pet has a target
function AI_PET_has_target(monster, target)
	local master = GetChaHost(monster)
	-- If target is friendly, change target. Othervise, attack it !
	if (isFriendly(monster, target) == true) then
		clear_target(monster)
	else
		local skill_id = select_skill(monster)
		ChaUseSkill(monster, target, skill_id)
		end
	end

-- This is what happen when a pet has no target
function AI_PET_no_target(monster)

	local master = GetChaHost(monster)
	-- No target and no master, switch to aggressive mode
	
	local cha_map = GetChaMapName (master)
	local distance_to_master = get_distance(master,monster)
	-- Lets Teleport to our Master
	local rand_chat = math.random(1,4)
	if distance_to_master > 1200 then
		local x,y = GetChaPos (master) 
		GoTo(monster,math.floor (x/100),math.floor (y/100),cha_map)
		local Rad = math.random(1,4)
		if Rad == 1 then
		PetSay(master,monster,"Не убегайте, подождите меня!!!")
		elseif Rad == 2 then
		PetSay(master,monster,"Вы бежите слишком быстро!")
		elseif Rad == 3 then
		PetSay(master,monster,"Пожалуйста бегите тише!")
		elseif Rad == 4 then
		PetSay(master,monster,"Вы слишком быстро идёте!")
		end
	end
	-- Nothing todo Go to our Master
	local distance_to_master = get_distance(monster, master)
	if distance_to_master > 400 then
		local hx, hy = GetChaPos(master)
		local rx = 200 - Rand(400)
		local ry = 200 - Rand(400)
		ChaMove(monster, hx + rx, hy + ry)
		-- Lets make our Pet talk a bit
				local Rad = math.random(1,80)
				if Rad == 1 then
				Say(monster,"Stop staring at us!!")
				elseif Rad == 2 then
				Say(monster,"Я служу только {"..GetChaDefaultName(master).."}.")
				elseif Rad == 3 then
				Say(monster,"Удачная комбинация!!!")
			end
		end
end

-- This is what happen everytime
function AI_PET_tick(monster)
	local master = GetChaHost(monster)
	local masters = TurnToCha(master)
	local name = GetChaDefaultName(master)
	-- There's a chance for the monster to change sides.
	local randomVal = Rand(10000)
	if (randomVal <= 5) then
		SetChaHost(monster,nil)
		SetChaAIType(monster, 10)
		SetChaTarget(monster,master)
		BickerNotice(master, "Ваш питомец злится ")
		Say(monster,"Я не раб больше!")
	end
	-- Master is not alive
	if(IsChaLiving(master) ~= 1)then
		KillCha(monster)
	end
	-- If Master is not alive
	if isAlive(master) == false then
		KillCha(monster)
	end
	-- No target and no master, switch to aggressive mode
	if (master == nil) then
		SetChaAIType(monster, 10)
		return
	end
end