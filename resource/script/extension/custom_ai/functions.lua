


-- --------------
-- Custom Table(s)
-- --------------
player_pet = { }
master_tele = {}



-- -------------------
-- Custom Function(s)
-- -------------------


function ReCreatePet(role,pet)
		local oldHP = Hp(pet)
		Hp_Endure_Dmg(pet,Mxhp(pet))
		SetChaLifeTime(pet,100)
		local x,y = GetChaPos(role)
		local x1 = x + 100
		local y1 = y + 100
		local petID = GetChaID(pet)
		local CalledPet = CreateCha(petID, x1, y1, 145, 50)
		SetChaLifeTime(CalledPet,3600000)
		SetChaHost(CalledPet,role)
		SetChaAIType(CalledPet,AI_PET)
		SetChaSideID(CalledPet,GetChaSideID(role))
end
	
function UseAnySkill(ATKER,DEFER,sklv)
	if(monsterPet[ATKER] ~= nil)then
		SetChaTarget(monsterPet[ATKER],DEFER)
	end
	if(monsterPet[DEFER] ~= nil)then
		SetChaTarget(monsterPet[DEFER],ATKER)
	end
	Hook:SetHookPattern("(Skill_%a+_End)", "PRE", UseAnySkill)
	Check_Baoliao_orginal = Check_Baoliao
	Check_Baoliao = function(atker,defer,...)
		if(GetChaHost(defer) ~= nil)then
		return
		else
		Check_Baoliao_orginal(atker,defer,unpack(arg))
		end
	end
	end