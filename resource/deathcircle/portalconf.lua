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
-- FILE PURPOSE: PORTALCONF.LUA - Load "Death Circle" configuration which 
-- is used by the other maps holding portal to deathcircle.
-- ************************************************************************
deathcircle_portalconf = {} 

-- ---------------------------------
-- Adjusting display settings
-- ---------------------------------
deathcircle_portalconf.default_port_name = " ^^ Захват флага Барбароссы ^^ "
deathcircle_portalconf.notice_heading = " ^^ Захват флага Барбароссы ^^ "

-- ---------------------------------
-- BirthPoints
-- ---------------------------------
AddBirthPoint("Battle Royal", "deathcircle", 63,47)
AddBirthPoint("Battle Royal", "deathcircle", 63,80)
AddBirthPoint("Battle Royal", "deathcircle", 81,63)
AddBirthPoint("Battle Royal", "deathcircle", 44,63)
--AddBirthPoint("Death Circle", "deathcircle", 93,36)
--AddBirthPoint("Death Circle", "deathcircle", 53,61)
--AddBirthPoint("Death Circle", "deathcircle", 43,60)
--AddBirthPoint("Death Circle", "deathcircle", 65,36)


-- ---------------------------------
-- Adjusting portal entrance conditions
-- ---------------------------------
deathcircle_portalconf.min_level = 60
deathcircle_portalconf.max_level = 100

deathcircle_portalconf.restricted_mode = false
deathcircle_portalconf.restricted_player_list = { "Matt" , "Matt2", "Matt3" } -- List of characters allowed to go inside if restricted mode is on