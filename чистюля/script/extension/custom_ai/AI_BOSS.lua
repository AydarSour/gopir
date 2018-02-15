-- --------------------------
-- AI DEDICATED TO "AI_BOSS"
-- --------------------------

--print( "* Loading AI_BOSS functions" )

-- -- This is what happen when a BOSS has a target
-- function AI_BOSS_has_target(monster, target)
        -- if (Percentage_Random(0.8)) then
                -- -- Randomly change target sometimes
                -- target = find_target(monster, 1)
        -- end
        -- local target_job = GetChaAttr(target,ATTR_JOB)
        -- action = {
                -- -- do depeding on the Targets Class
          -- [8] = target_is_champ, -- Champion
          -- [9] = target_is_crus, -- Crusader
          -- [12] = target_is_ss, -- Sharpshooter
          -- [13] = target_is_cleric, -- Cleric
          -- [14] = target_is_sm, -- Seal Master
          -- [16] = target_is_voy, -- Voyager
        -- }
        -- -- Lets Check if we are sealed. If yes We run away
        -- if isSealed(monster) == true then
                -- flee(monster,target)
        -- else
                 -- if action[target_job] ~= nil then
                   -- action[target_job](monster,target)
                 -- end
                -- end

-- end


-- -- This is what happen when a BOSS has no target
-- function AI_BOSS_no_target(monster)
        -- -- No target, boss wont get fucked, he just refill HP !
        -- local hp = GetChaAttr( monster , ATTR_MXHP)
        -- SetCharaAttr(hp, monster, ATTR_HP )

        -- -- Lets look around for Targets
        -- local target = find_target(monster, 0)
        -- if target~=nil then
                -- SetChaTarget(monster, target)
        -- end

-- end

-- -- This is what happen everytime
-- function AI_BOSS_tick(monster)
        -- local cha_id = GetCharID(monster)
        -- -- Lets break stealth
        -- local vision = GetChaVision(monster)
        -- ClearHideChaByRange(monster, 0, 0, vision, 0)
-- end
