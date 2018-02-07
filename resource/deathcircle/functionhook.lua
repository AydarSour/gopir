-- ------------------------------------------------------------------------
-- DEATH CIRCLE
-- ------------------------------------------------------------------------
-- Death Circle is a capture the flag game design and developped by Matt.
-- Credits should stay on top of this file, tho you are free to add credits for your own enhancements.
-- Credits:
--		[*] Overall game on which "Death Circle" is running: Moliyo [http://moliyo.com]
--		[*] Original map creation: Matt from Privatia [http://privatia.serverdev.net]
--		[*] CTF Game scripting: Matt from Privatia [http://privatia.serverdev.net]
--		[*] Moral support & technical hint: Kajack & Snowcrash from Privatia [http://privatia.serverdev.net]
-- ------------------------------------------------------------------------

-- ************************************************************************
-- FILE PURPOSE: FUNCTIONHOOK.LUA - Create hooks ontop of specific functions
-- to avoid altering native files.
-- ************************************************************************

-- -----------------------------
-- Hooking Player killed Player
-- -----------------------------
deathcircle_pkp_hook = GetExp_PKP
GetExp_PKP = function (dead , atk)
	if (GetChaMapName(atk) ~= "deathcircle") then
		-- Call "native" PKP function
		deathcircle_pkp_hook(dead, atk )
	else
		-- Call custom PKP function
		deathcircle_player_killed_player(atk, dead)
	end
end

-- -----------------------------
-- Hooking Monster killed Player
-- -----------------------------
deathcircle_mkp_hook = GetExp_MKP
GetExp_MKP = function (dead , atk)
	if (GetChaMapName(atk) ~= "deathcircle") then
		-- Call "native" MKP function
		deathcircle_mkp_hook(dead, atk )
	else
		-- Call custom MKP function
		deathcircle_monster_killed_player(atk, dead)
	end
end

-- -----------------------------
-- Hooking crusader stealth
-- -----------------------------
-- We initiate this hook if and only if stealth is disabled either globaly
-- or for the flag holder.
if (deathcircle_conf.disable_stealth == true or deathcircle_conf.disable_stealth_for_flag_holder == true) then
	deathcircle_stealth_hook = Skill_Ys_End
	Skill_Ys_End = function ( ATKER , DEFER , sklv )
		-- Apply hook only in the deathcircle map
		if (GetChaMapName(ATKER) ~= "deathcircle") then
			-- Call "native" stealth skill
			deathcircle_stealth_hook( ATKER, DEFER, sklv )
		else
			local charname = GetChaDefaultName(ATKER)
			if (deathcircle_conf.disable_stealth == true) then
				-- Noone can use stealth
				SystemNotice(ATKER, deathcircle_conf.notice_heading.."Скрытность не работает на данной локации ")
			elseif (deathcircle_conf.disable_stealth_for_flag_holder == true and deathcircle_flag_holder == charname) then
				-- Flag holder cannot stealth
				SystemNotice(ATKER, deathcircle_conf.notice_heading.."Держатель флага не может использовать скрытность ")
			else
				-- Call "native" stealth skill
				deathcircle_stealth_hook( ATKER, DEFER, sklv )
			end
		end
	end
end

-- -----------------------------
-- Hooking cleric true sight
-- -----------------------------

if (deathcircle_conf.disable_ts == true) then
	SkillSp_Syzy = function ( sklv ) 
	return 0 -- No sp consumption 
	end 
	SkillArea_Square_Syzy = function ( sklv ) 
	end 
	SkillArea_State_Syzy = function ( sklv ) 
	end
	
end



-- -----------------------------
-- Hooking crusader stun
-- -----------------------------


-- -----------------------------
-- Hooking voyager conch
-- -----------------------------
-- Add stun effect to conch

if (deathcircle_conf.enable_stunning_conch == true) then
	deathcircle_conch_hook = Skill_Bkcj_End
	Skill_Bkcj_End = function ( ATKER , DEFER , sklv ) 
		-- Apply hook only in the deathcircle map
		if (GetChaMapName(ATKER) ~= "deathcircle") then
			-- Call "native" conch skill
			deathcircle_conch_hook( ATKER, DEFER, sklv )
		else
			-- Retrieve attacker data
			local attacker_spr = Sta ( ATKER ) -- Player SPR
			local AddStateLv = GetChaStateLv ( ATKER , STATE_MLCH ) -- Intense Magic

			-- Compute damages (The same way as in normal maps)
			local dmg = math.floor( 200 + sklv*30 + attacker_spr*6 )  -- Base damages
			local dmg_fin = Cuihua_Mofa ( dmg , AddStateLv )  -- Take Intense Magic into account
			local dmg_ElfSkill = ElfSkill_MagicAtk ( dmg , ATKER )  -- Add fairy skill boost
			dmg_fin = dmg_fin + dmg_ElfSkill -- Compute resulting damage
			
			-- Apply damages to target
			Hp_Endure_Dmg ( DEFER , dmg_fin ) 

			-- Add Possible stun effect
			local randValue = math.random(1,100)
			if (randValue <= deathcircle_conf.stunning_conch_rate) then
				local statetime = deathcircle_conf.stunning_conch_duration
				local statelv = sklv
				AddState ( ATKER , DEFER , STATE_XY , statelv , statetime ) 
			end
		end
	end 
end

-- -----------------------------
-- Hooking voyager thunder
-- -----------------------------
-- Add slowing effect
if (deathcircle_conf.enable_slowing_lightning == true) then
	deathcircle_lightning_hook = Skill_Lj_End
	Skill_Lj_End = function ( ATKER , DEFER , sklv ) 
		-- Apply hook only in the deathcircle map
		if (GetChaMapName(ATKER) ~= "deathcircle") then
			-- Call "native" conch skill
			deathcircle_lightning_hook( ATKER, DEFER, sklv )
		else
			-- Retrieve attacker data
			local sta_atk= Sta ( ATKER ) -- Player SPR
			local Lv = Lv( ATKER ) -- Player level
			local AddStateLv = GetChaStateLv ( ATKER , STATE_MLCH ) -- Intense Magic
			
			-- Compute damages (The same way as in normal maps)
			local dmg = math.floor ( 80 + sklv*10 +sta_atk * 6 ) + 3 * Lv -- Base damages
			-- Apply bd set effect
			local Check_Heilong  = CheckItem_Heilong ( ATKER )
			if Check_Heilong == 1 then
					local Percentage = Percentage_Random ( 0.8 )
					if Percentage == 1 then
						dmg =  dmg*1.5 
						SystemNotice ( ATKER , "Получена сила Чёрного Дракона. Увеличен урон ")
					end
			end
			-- Apply intense magic boost
			local dmg_fin = Cuihua_Mofa ( dmg , AddStateLv )
			-- Apply fairy skill boost
			local dmg_ElfSkill = ElfSkill_MagicAtk ( dmg , ATKER )
			dmg_fin = dmg_fin + dmg_ElfSkill
			
			-- Apply damages to target
			Hp_Endure_Dmg ( DEFER , dmg_fin )
			
			-- Add Slowing effect
			local statetime = deathcircle_conf.slowing_lightning_duration
			local statelv = sklv
			AddState ( ATKER , DEFER , STATE_MB , 2 , statetime ) 
		end 
	end
end
