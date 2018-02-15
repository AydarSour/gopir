-- ***********************************
-- Sample AI handling system
-- By Matt @serverdev.net
-- ***********************************
-- -------------------------
-- Load re-usable functions
-- --------------------------
dofile(GetResPath("script/extension/custom_ai/lib.lua"))
dofile(GetResPath("script/ai/ai_sdk.lua"))
dofile(GetResPath("script/ai/ai.lua"))
dofile(GetResPath("script/extension/custom_ai/functions.lua"))
-- --------------------------
-- Define the custom AI types
-- --------------------------
AI_CUSTOM_HANDLERS = {}

-- --------------------------
-- AI_PET
-- --------------------------
dofile(GetResPath("script/extension/custom_ai/AI_PET.lua"))


AI_CUSTOM_HANDLERS[AI_PET] = {}
AI_CUSTOM_HANDLERS[AI_PET]["has_target"] = AI_PET_has_target
AI_CUSTOM_HANDLERS[AI_PET]["no_target"] = AI_PET_no_target
AI_CUSTOM_HANDLERS[AI_PET]["tick"] = AI_PET_tick

-- --------------------------
-- AI_BOSS
-- --------------------------
--dofile(GetResPath("script/extension/custom_ai/AI_BOSS.lua"))
--AI_BOSS = 13



-- --------------------------
-- Hook  the default AI loop
-- to plug our custom processing
-- --------------------------
--print( "        * Activating ai_loop hook" )
if (ai_loop == nil) then
	--print( "                => Hooking failed, ai_loop is not yet defined" )
end

npclooplist = {}

ai_loop_original = ai_loop
ai_loop = function (monster)
	-- Moving NPCs
	local ret, npc, id = FindNpc( GetChaDefaultName(monster) )
	if ret ~= nil and npc ~= nil and id ~= nil then
		ai_loop_npc(monster,id)
	end
	
	-- Retrive monster s AI type
	local ai_type = GetChaAIType(monster)
	-- Check if the AI Type is a custom one
	if (AI_CUSTOM_HANDLERS[ai_type] == nil) then
		-- call the original AI handler
		ai_loop_original(monster)
	else
		-- handle custom AI
		ai_custom_loop(monster, ai_type)
	end
end

-- --------------------------
-- AI LOOP.
-- This AI loop handler is called every tick by the server
-- for monsters having a custom AI.
-- It delegates "Wisdom" to function dedicated to one customized
-- AI and corresponding to one of the following status of the monster:
--      * Monster is currently having an assigned target
--      * Monster is currently having no assigned target
-- Additionnaly, each loop triggers a call to the dedicated "tick" function.
-- --------------------------
function ai_custom_loop(monster, ai_type)
	-- Retrieve monster current target
	local target = GetChaTarget(monster) --取出当前角色的目标
	if target ~= nil then
		-- Monster has a target, call the dedicated handler if it is defined
		if (AI_CUSTOM_HANDLERS[ai_type]["has_target"] ~= nil) then
			local skill_id = select_skill(monster)
			ChaUseSkill(monster, target, skill_id)
			AI_CUSTOM_HANDLERS[ai_type]["has_target"](monster,target)
		end
	else
		-- Monster has not target, call the dedicated handler if it is defined
		if (AI_CUSTOM_HANDLERS[ai_type]["no_target"] ~= nil) then
			AI_CUSTOM_HANDLERS[ai_type]["no_target"](monster)
		end
	end
	-- Trigger Tick dedicated handler if it is defined
	if (AI_CUSTOM_HANDLERS[ai_type]["tick"] ~= nil) then
		AI_CUSTOM_HANDLERS[ai_type]["tick"](monster)
	end
end


-- ------------------------------------------------------
--  NPC AI LOOP
-- Makes it possible that nps walk
-- Makes it possible that npcs talk
-- ------------------------------------------------------
function ai_loop_npc (npc,id)

	if npclooplist[id] == nil then
		npclooplist[id] = {}
		npclooplist[id].pointer = npc
		npclooplist[id].tick = 0
		npclooplist[id].talking = false
		npclooplist[id].x,npclooplist[id].y = GetChaPos(npc)
	end
	
	npclooplist[id].tick = npclooplist[id].tick +1
	
	if npclooplist[id].talking ~= true then
		--npc_move(npc, 400,id)
	end
	
	local target = find_target(npc, 600)
	if target ~= nil and Rand(100) < 1 then
		local say_id = math.random(1,npc_say.count)
		if npc_say[say_id] ~= nil then
			Say(npc,npc_say[say_id])
		end
	end
		
end
