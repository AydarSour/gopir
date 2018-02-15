-- ***********************************
-- Sample AI handling system
-- By Matt @serverdev.net
-- Edited by Yellowflash @pkodev.com
-- Do not remove this credits
-- **********************************


-- --------------------------
-- Load re-usable functions
-- --------------------------
--dofile(GetResPath("script/extension/custom_ai/lib.lua"))

-- --------------------------
-- Define the custom AI types
-- --------------------------
AI_CUSTOM_HANDLERS = {}

-- --------------------------
-- AI_PET
-- --------------------------
--dofile(GetResPath("script/extension/custom_ai/ai_pet.lua"))
AI_PET = 12

AI_CUSTOM_HANDLERS[AI_PET] = {}
AI_CUSTOM_HANDLERS[AI_PET]["has_target"] = AI_PET_has_target
AI_CUSTOM_HANDLERS[AI_PET]["no_target"] = AI_PET_no_target
AI_CUSTOM_HANDLERS[AI_PET]["tick"] = AI_PET_tick

-- --------------------------
-- Hook  the default AI loop
-- to plug our custom processing
-- --------------------------
if (ai_loop == nil) then
end

ai_loop_original = ai_loop
ai_loop = function (monster)
	-- Retrive monster s AI type
	local ai_type = GetChaAIType(monster)
	-- Check if the AI Type is a custom one
	if (AI_CUSTOM_HANDLERS[ai_type] == nil) then
		-- call the original AI handler
		ai_loop_original(monster)
	elseif (AI_CUSTOM_HANDLERS[ai_type] ~= nil) then
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
	local target = GetChaTarget(monster)
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



