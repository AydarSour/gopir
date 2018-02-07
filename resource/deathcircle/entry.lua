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
-- FILE PURPOSE: ENTRY.LUA - Standard map Loading file. Loaded by target map.
-- ************************************************************************

-- Load death circle configuration file.
dofile(GetResPath("deathcircle/portalconf.lua"))

-- -----------------------------
-- Define the spawn entry portal
-- -----------------------------
function config_entry(entry)
  SetMapEntryEntiID(entry,2492,1)
end

-- -----------------------------
-- Triggered when portal opens
-- -----------------------------
function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    -- deathcircle_entry = entry
	local portName = deathcircle_portalconf.default_port_name
	if (deathcircle_portalconf.restricted_mode == true) then
		portName = portName.." [Private]"
	end
	SetMapEntryEventName( entry, portName )
	
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("Захват флага Барбароссы открылся ! Координаты портала ["..posx..","..posy.."]")
end


function after_destroy_entry_deathcircle(entry)
end

-- ------------------------------
-- Triggered whenever a user logs in
-- If the portal is currently opened.
-- ------------------------------
function after_player_login_deathcircle(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice("Захват флага Барбароссы открылся ! Координаты портала ["..posx..","..posy.."]")
end

-- ------------------------------
-- Check if a player is allowed 
-- to join the game.
-- Triggered when he tries to go
-- into the portal
-- ------------------------------
function check_can_enter_deathcircle( player, copy_mgr )
  local level = Lv( player )
  local Team_In = IsInTeam(player)
  if Team_In == 1 then
	SystemNotice(player, deathcircle_portalconf.notice_heading.."Вы не можете быть в отряде ") 
	return 0
	end
  if (level < deathcircle_portalconf.min_level) then
	SystemNotice(player, deathcircle_portalconf.notice_heading.."Ваш уровень слишком мал  "..deathcircle_portalconf.min_level.."+") 
	return 0
  elseif (level > deathcircle_portalconf.max_level) then
	SystemNotice(player, deathcircle_portalconf.notice_heading.."Ваш уровень слишком высок. Только для уровней "..deathcircle_portalconf.max_level.."- вход доступен ")
	return 0
  end
  
  -- Handle player retricted list if activated
  if (deathcircle_portalconf.restricted_mode == true) then 
	local characterName = GetChaDefaultName(player)
	local charCount = table.getn(deathcircle_portalconf.restricted_player_list)
	for i = 1,charCount do
		-- select a random type for every location (more fun than static assignment)
		print ("______"..deathcircle_portalconf.restricted_player_list[i].."=="..characterName)
		if (deathcircle_portalconf.restricted_player_list[i] == characterName) then
			return 1
		end
	end
	SystemNotice(player, deathcircle_portalconf.notice_heading.."Доступ на карту временно ограничен ")
	return 0
  end
  
  return 1
end

function begin_enter_deathcircle(player, copy_mgr)
	-- Warn players that a new opponent came in
	local characterName = GetChaDefaultName(player)
	Notice(deathcircle_portalconf.notice_heading.."Игрок "..characterName.." зашёл на карту захвата флага !")
	
	-- Send player in
	MoveCity(player, "Battle Royal")
end


function before_leave_deathcircle ( player )
end



