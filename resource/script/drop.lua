------
-- Файл нигде не инклудится. Подгружать через ГС
------

print("Drop fix loading");

Mordo_Check_SpawnResource = nil

function Mordo_Check_SpawnResource ( ATKER, DEFER , lv_skill , diaoliao_count , ...)

	local ChaId = GetChaTypeID( DEFER );

	item = {} 
	local count = 0 
	local bsmf=1  
	
	if diaoliao_count <= 0 or diaoliao_count > 10 then
		return 
	end 
	
	local ResourceGet_RAID = 1
	local ResourceItemUse_Check = 0
	ResourceItemUse_Check = CheckCha_ResourceItemUse ( ATKER )
	
	if ResourceItemUse_Check == 1 then
		ResourceGet_RAID = 2
	end

	local UnNormal_ResourceID_Num = 1
	local UnNormal_ResourceID = {}
	UnNormal_ResourceID[0] = 777
	UnNormal_ResourceID[1] = 778

	local Resource_ID = GetChaTypeID( DEFER )

	local Un_C = 0
	
	for Un_C = 0 , UnNormal_ResourceID_Num , 1 do
		if Resource_ID == UnNormal_ResourceID[Un_C] then
			ResourceGet_RAID = 1
		end
	end

	local Tree_ID = GetChaTypeID( DEFER )
	local Tree_hp = Hp( DEFER )
	local i = 0
	
	for Un_C = 0 , UnNormal_ResourceID_Num , 1 do
		if Tree_ID == UnNormal_ResourceID[Un_C] then
			lv_skill = 0
		end
	end

	for i = 1 , diaoliao_count , 1 do
		if arg[i] == 200 and Resource_ID == 777 then arg[i] = 1 end -- сама корректировка, по дропу, итемы недоступны
		if arg[i] >= 100 then 
			mf = math.min ( 1, 100 / arg[i] * bsmf * (1 + lv_skill * 0.1 ) ) * ResourceGet_RAID * Resource_RAID_ADJUST
			a = Percentage_Random(mf) 
			if a == 1 then 
				count = count + 1 
				item[count] = i 
			end 
		else 
			--LG("mine burst_err", "function Check_SpawnResource : " , " drop item rate error ", "Round", i , "kind of drop list rate= " , arg[i] )  
		end 
	end 

	if count >= 1 then 
		item[1] = item[count]  
		count = 1 
	end
	
	SetItemFall ( count , item[1] , item[2] , item[3] , item[4] , item[5] , item[6], item[7] ,item[8],item[9],item[10] )  
	
end 

Check_SpawnResource = Mordo_Check_SpawnResource