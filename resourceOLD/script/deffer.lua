print( "Loading deffer.lua" )
--dofile(GetResPath("script\\deffer.lua"))
--Hook:RemovePreHook("CreateBoat", CreateBoatHook, 2)




Hook:SetHookPattern("BoatBuildCheck", "POST", BoatBuildCheckHook, 2)