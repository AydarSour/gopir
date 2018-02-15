function hp_med_min( role , Item )
	--LuaPrint("Enter function hp_med_min() --[[mini HP recovery potion formula]]--") 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local con = Con(role)
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then
		--LuaPrint("Character dead or illegal HP value")  
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
		return 
	end 
	hp_resume = 20 +con*5 
	hp = hp + hp_resume 
	mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then
		 hp = mxhp 
		 --LG("Potion Usage", "Max HP cap reached", "\n" ) 
	 end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_min() --[[mini HP recovery potion formula]]--") 
end 

function hp_med_small(role, Item )
	--LuaPrint("Enter function hp_med_small() --[[small HP potion formula]]--") 
	local hp = GetChaAttr(role, ATTR_HP)
	local con = Con(role)
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 20+ con*5  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small() --[[small HP potion formula]]--") 
end 

function hp_med_middle( role , Item )
	--LuaPrint("Enter function hp_med_small( role )  --[[medium HP potion formula]]--") 
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	hp_resume = 800 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	 if hp > mxhp then
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
		--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[medium HP potion formula]]--") 
end 

function hp_med_large( role , Item )
	--LuaPrint("Enter function hp_med_small( role )  --[[Big HP potion formula]]--") 
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	local mxhp = GetChaAttr(role, ATTR_MXHP) 
	hp_resume = 0.2 * mxhp 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
	--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[big HP potion formula]]--") 
end 

function hp_med_super( role , Item )
	--LuaPrint("Enter function hp_med_small( role )  --[[super HP potion formula]]--") 
	local hp = GetChaAttr(role, ATTR_HP) 
	--LG("Potion Usage", "Current HP= ", hp , "\n" ) 
	if hp <= 0 then 
		--LuaPrint("Character dead or illegal HP value")  return 
		--LG("Potion Usage", "Character dead or illegal HP value","\n" )  
	end 
	local mxhp = GetChaAttr(role, ATTR_MXHP) 
	hp_resume = 0.8 * mxhp  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
		--LG("Potion Usage", "Max HP cap reached", "\n" ) 
	end 
	--LG("Potion Usage", "HP recovered to", hp ,"\n" ) 
	SetCharaAttr(hp, role, ATTR_HP) 
	--LuaPrint("Out function hp_med_small( role )  --[[super HP potion formula]]--") 
end 




--	1847	������
function ItemUse_APPLE ( role , Item )
	local statelv = 1
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"� ������ ������ �� ��� ����������� ����� �������������, ���������� �������� �������.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	1848	����
function ItemUse_BREAD (role, Item )
	local statelv = 2
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"� ������ ������ �� ��� ����������� ����� �������������, ���������� �������� �������.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime ) 
	end
end 

--	1849	����
function ItemUse_CAKE ( role , Item )
	local statelv = 3
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"� ������ ������ �� ��� ����������� ����� �������������, ���������� �������� �������.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime ) 
	end
end 


------
-- ID3116	���������� �����
------
function ItemUse_JLG( role , Item )
end

------
-- ID3117	������� �����
------
function ItemUse_SZ ( role , Item )
end
------
-- ID3118	����
------
function ItemsUse_MG ( role , Item )
end 

------
-- ID3119	���� �������
------
function ItemUse_MTLG ( role , Item )
end 

------
-- ID3120	������� �����
------
function ItemUse_BG ( role , Item )
end 

------
-- ID3121	�������� �����
------
function ItemUse_WCG( role , Item )
end 

--	3122	��� ���� ������
function ItemUse_JLGZ( role , Item )
	local statelv = 6
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"� ������ ������ �� ��� ����������� ����� �������������, ���������� �������� �������.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	3123	��� �� ������� �������
function ItemUse_SZC( role , Item )
	local statelv = 7
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"� ������ ������ �� ��� ����������� ����� �������������, ���������� �������� �������.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	3124	������� ���
function ItemUse_MGT( role , Item )
	local statelv = 8
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"� ������ ������ �� ��� ����������� ����� �������������, ���������� �������� �������.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	3125	��� ������ �������
function ItemUse_MTLGZ( role , Item )
	local statelv = 9
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"� ������ ������ �� ��� ����������� ����� �������������, ���������� �������� �������.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	3126	�������
function ItemUse_BQL( role , Item )
	local statelv = 10
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"� ������ ������ �� ��� ����������� ����� �������������, ���������� �������� �������.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	3127	������� ���
function ItemUse_WCLLZ( role , Item )
	local statelv = 11
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"� ������ ������ �� ��� ����������� ����� �������������, ���������� �������� �������.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	3128	��������� ��������
function ItemUse_ZHGZ( role , Item )
	local statelv = 12
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"� ������ ������ �� ��� ����������� ����� �������������, ���������� �������� �������.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

------
-- ID3129	�������� �����
------
function ItemUse_YYCY( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,4)    == 0 then return end 
end

------
-- ID3130	�������� ����������
------
function ItemUse_MHHB( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,8)    == 0 then return end 
end 

------
-- ID3131	����-�����
------
function ItemUse_QYGS( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,18)   == 0 then return end 
end 

------
-- ID3132	����� ������� �����
------
function ItemUse_BFCY( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,22)   == 0 then return end 
end 

------
-- ID3133	��������� �����
------
function ItemUse_GCYS( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,33)   == 0 then return end 
end 

------
-- ID3134	��� "��������"
------
function ItemUse_XSHC( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,38)   == 0 then return end 
end 

------
-- ID3135	����-����
------
function ItemUse_MZQYG( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,41)   == 0 then return end  
end 

------
-- ID3136	������ ������� �����
------
function ItemUse_BYS( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,59)   == 0 then return end 
end 

------
-- ID3137	��������
------
function ItemUse_TMLGZ( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,100)  == 0 then return end  
end 

------
-- ID3138	���������� �����
------
function ItemUse_SMG( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,111)  == 0 then return end  
end 

------
-- ID3139	����������
------
function ItemUse_TSJ( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,141)  == 0 then return end  
end 

------
-- ID3140	��������� �����
------
function ItemUse_MHYS( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,201)  == 0 then return end  
end 

------
-- ID3917	������ ���������� �������
------
function ItemUse_TZCMB ( role , Item )
	if CanUseItem(role) == 0 then return end
	tempt_monster( role ,  99 )
end 


------
-- ����� �������
------

------
-- ID3184	�������� �����
------
function Sk_Script_Dpsl ( role , Item )
	local sk_add = SK_DPSL
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end
end

------
-- ID3190	������� �������
------
function Sk_Script_Lzj ( role , Item )
	local sk_add = SK_LZJ  
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3193	����������� �����
------
function Sk_Script_Lxjy ( role , Item )
	local sk_add = SK_LXJY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3167	���
------
function Sk_Script_Lh ( role , Item )
	local sk_add = SK_LH 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3200	�����
------
function Sk_Script_Ssd ( role , Item )
	local sk_add = SK_SSD  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3199	����������� ����
------
function Sk_Script_Ctd ( role , Item )
	local sk_add = SK_CTD 
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3213	������� ���������
------
function Sk_Script_Dzy ( role , Item )
	local sk_add = SK_DZY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3293	��� �����
------
function Sk_Script_Hx ( role , Item )
	local sk_add = SK_HX 
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3198	������������� ����
------
function Sk_Script_Rsd ( role , Item )
	local sk_add =SK_RSD 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3160	��������� ������� �����
------
function Sk_Script_Jssl ( role , Item )
	local sk_add = SK_JSSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3161	�������� ����
------
function Sk_Script_Gtyz ( role , Item )
	local sk_add = SK_GTYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3162	��������
------
function Sk_Script_Qhtz ( role , Item )
	local sk_add = SK_QHTZ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3163	��������
------
function Sk_Script_Lqhb ( role , Item )
	local sk_add = SK_LQHB 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3164	������������
------
function Sk_Script_Jdzz ( role , Item )
	local sk_add = SK_JDZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3165	���������� ����
------
function Sk_Script_Hyz ( role , Item )
	local sk_add = SK_HYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	--LG( " learn sk " , " Sk_Script_Hyz ()	: " , "sever determine return= " , a ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3166	������� ����
------
function Sk_Script_Zj ( role , Item )
	local sk_add = SK_ZJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3168	������ �������� ����
------
function Sk_Script_Jjsl ( role , Item )
	local sk_add = SK_JJSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3169	���������� ���������
------
function Sk_Script_Ymsl ( role , Item )
	local sk_add = SK_YMSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3170	�������
------
function Sk_Script_Kb ( role , Item )
	local sk_add = SK_KB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	--LG( " learn sk " , " function Sk_Script_Kb ()	: " , "sever determine return= " , a ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3171	���������� ������
------
function Sk_Script_Ttcb ( role , Item )
	local sk_add = SK_TTCB  
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3172	�������� ���
------
function Sk_Script_Mnrx ( role , Item )
	local sk_add = SK_MNRX 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3173	����������� ������
------
function Sk_Script_Swzq ( role , Item )
	local sk_add = SK_SWZQ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3174	����� ����� ������
------
function Sk_Script_Ssjjc ( role , Item )
	local sk_add = SK_FSZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3175	����������
------
function Sk_Script_Hys ( role , Item )
	local sk_add = SK_HYS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3176	�������� �������
------
function Sk_Script_Pxkg ( role , Item )
	local sk_add = SK_PXKG 
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3177	����������
------
function Sk_Script_Qx ( role , Item )
	local sk_add = SK_YS  
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3178	���� � �����
------
function Sk_Script_Bc ( role , Item )
	local sk_add = SK_BC  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3179	������� ����
------
function Sk_Script_Guz ( role , Item )
	local sk_add = SK_GWZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	--LG( " learn sk " , " function Sk_Script_Guz ()	: " , "sever determine return= " , a ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3180	�������� ������
------
function Sk_Script_Db ( role , Item )
	local sk_add = SK_DB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3181	����������
------
function Sk_Script_Mb ( role , Item )
	local sk_add = SK_MB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3182	�������� ����
------
function Sk_Script_Shtz ( role , Item )
	local sk_add = SK_SHTZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3183	���������������
------
function Sk_Script_Tzhf ( role , Item )
	local sk_add = SK_TZHF  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3187	������ ����������� ������
------
function Sk_Script_Gjsl ( role , Item )
	local sk_add = SK_GJSL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3188	���� �����
------
function Sk_Script_Jfb ( role , Item )
	local sk_add = SK_JFB  
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3189	���� ����
------
function Sk_Script_Yy ( role , Item )
	local sk_add = SK_YY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3192	������ �������������� ������
------
function Sk_Script_Hqsl ( role , Item )
	local sk_add = SK_HQSL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3193	����������� �����
------
function Sk_Script_Lxjy ( role , Item )
	local sk_add = SK_LXJY  
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3201	������������ ������
------
function Sk_Script_Dyyj ( role , Item )
	local sk_add = SK_DYJJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3202	��������� �������
------
function Sk_Script_Tj ( role , Item )
	local sk_add = SK_TJ 
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3203	����������
------
function Sk_Script_Sj ( role , Item )
	local sk_add = SK_SJ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3204	������� � ������
------
function Sk_Script_Bt ( role , Item )
	local sk_add = SK_BT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3205	����
------
function Sk_Script_Jsjc ( role , Item )
	local sk_add = SK_JSJC  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3206	���������
------
function Sk_Script_Xzys ( role , Item )
	local sk_add = SK_XZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3207	��������������
------
function Sk_Script_Hfs ( role , Item )
	local sk_add = SK_HFS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3208	���������� ����
------
function Sk_Script_Xlcz ( role , Item )
	local sk_add = SK_XLCZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3209	�������� ������
------
function Sk_Script_Syzy ( role , Item )
	local sk_add = SK_SYZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

------
-- ID3213	������� ���������
------
function Sk_Script_Dzy( role , Item )
	local sk_add = SK_DZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3214	������ ��������������
------
function Sk_Script_Dhfs ( role , Item )
	local sk_add = SK_DHFS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3210	���������� �����
------
function Sk_Script_Xlzh ( role , Item )
	local sk_add = SK_XLZH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3211	���� ����
------
function Sk_Script_Fzlz ( role , Item )
	local sk_add = SK_FZLZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3212	��������� ��������
------
function Sk_Script_Sy ( role , Item )
	local sk_add = SK_SY  
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3215	�����������
------
function Sk_Script_Fh ( role , Item )
	local sk_add = SK_FH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3216	������� �������
------
function Sk_Script_Jsfb ( role , Item )
	local sk_add = SK_JSFB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3217	���������� ���
------
function Sk_Script_Tshd ( role , Item )
	local sk_add = SK_TSHD  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3218	������ ����������
------
function Sk_Script_Xzfy ( role , Item )
	local sk_add = SK_XZFY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3219	������� ����
------
function Sk_Script_Ayzz ( role , Item )
	local sk_add = SK_AYZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3220	��������� �����
------
function Sk_Script_Zzzh ( role , Item )
	local sk_add = SK_ZZZH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3221	���������
------
function Sk_Script_Sdbz ( role , Item )
	local sk_add = SK_SDBZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3222	��������� ������
------
function Sk_Script_Nzs ( role , Item )
	local sk_add = SK_SYNZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3223	���������� ���
------
function Sk_Script_Xlpz ( role , Item )
	local sk_add = SK_XLPZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3224	���������� ��������
------
function Sk_Script_Hfwq ( role , Item )
	local sk_add = SK_HFWQ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3226	����� ����
------
function Sk_Script_Ks	( role , Item )
	local sk_add = SK_KS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID2679-ID2688	���������� �� ������������ 1 ��. - ���������� �� ������������ 10 ��.
------
function Sk_Script_ZhiZao( role , Item ) 
	local star_lv=GetItemID(Item)-2678
	local sk_add = SK_ZHIZAO  
	local form_sklv = GetSkillLv( role , sk_add ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"��� �������� ������ � ��� ������ ���� ���� ��������� ����")
		UseItemFailed ( role )
		return
	end
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_KS ) 
	if el_sklv <star_lv  then
		SystemNotice ( role , "�� ���� ����� �� �� ������� ������ ������, ���� "..star_lv.." ������� ����� ����, � ��������� �������� ������������� ��� ���������." ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"��� �������� ������ � ��� ������ ���� ���� ��������� ����")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "������������ ����� ��������� �������. ���������� ��������� ������ ������������ �������" ) 
		UseItemFailed ( role )  
		return 
	end 
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1068  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)
	end
end 

------
-- ID2699-ID2708	���������� �� ������� 1 ��. - ���������� �� ������� 10 ��.
------
function Sk_Script_ZhuZao( role , Item ) 
	local star_lv=GetItemID(Item)-2698
	local sk_add = SK_ZHUZAO  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_WK ) 
	if el_sklv <star_lv  then
		SystemNotice ( role ,  "�� ���� ����� �� �� ������� ������ ������, ���� "..star_lv.." ������� ������ ����, � ��������� �������� ������������� ��� ��������." ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"��� �������� ������ � ��� ������ ���� ���� ��������� ����")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "������������ ����� ��������� �������. ���������� ��������� ������ ������������ �������" ) 
		UseItemFailed ( role )  
		return 
	end
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1069  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)
	end
end

------
-- ID2689-ID2698	���������� �� ��������� 1 ��. - ���������� �� ��������� 10 ��.
------
function Sk_Script_PengRen( role , Item ) 
	local star_lv=GetItemID(Item)-2688
	local sk_add = SK_PENGREN  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_BY ) 
	if el_sklv <star_lv  then
		SystemNotice ( role ,  "�� ���� ����� �� �� ������� ������ ������, ���� "..star_lv.." ������� ������ �����, � ��������� �������� ������������� ��� ��������." ) 
		UseItemFailed ( role )
		return
	end 
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "������������ ����� ��������� �������. ���������� ��������� ������ ������������ �������" ) 
		UseItemFailed ( role )  
		return 
	end 
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1067  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)
	end
end

------
-- ID2709-ID2718	���������� �� ������� 1 ��. - ���������� �� ������� 10 ��.
------
function Sk_Script_FenJie( role , Item ) 
	local star_lv=GetItemID(Item)-2708
	local sk_add = SK_FENJIE  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_DL ) 
	if el_sklv <star_lv  then 
		SystemNotice ( role , "�� ���� ����� �� �� ������� ������ ������, ���� "..star_lv.." ������� ��������, � ��������� �������� ������������� ��� ��������." ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"��� �������� ������ � ��� ������ ���� ���� ��������� ����")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "������������ ����� ��������� �������. ���������� ��������� ������ ������������ �������" ) 
		UseItemFailed ( role )  
		return 
	end
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1070  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)
	end
end

------
-- ID3225	������ ����
------
function Sk_Script_Wk( role , Item ) 
	local sk_add = SK_WK  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3227	�������
------
function Sk_Script_Jr( role , Item )
	local sk_add = SK_JR  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3228	�������
------
function Sk_Script_Sl( role , Item ) 
	local sk_add = SK_SL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3229	����� �� �������
------
function Sk_Script_Bkzj( role , Item )
	local sk_add = SK_BKZJ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3230	�������
------
function Sk_Script_Jf( role , Item )
	local sk_add = SK_JF
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3231	������
------
function Sk_Script_Lj( role , Item )
	local sk_add = SK_LJ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3232	������������ ����������
------
function Sk_Script_Hzcr( role , Item )
	local sk_add = SK_HZCR     
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3233	���������� ���
------
function Sk_Script_Bkcj( role , Item ) 
	local sk_add = SK_BKCJ      
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3234	�������� �����
------
function Sk_Script_Sf( role , Item ) 
	local sk_add = SK_SF       
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3235	�����
------
function Sk_Script_Xw( role , Item ) 
	local sk_add = SK_XW        
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3236	�����
------
function Sk_Script_Mw( role , Item ) 
	local sk_add = SK_MW
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3237	�������� ������
------
function Sk_Script_Lm( role , Item ) 
	local sk_add = SK_LM
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3238	��������
------
function Sk_Script_Pj( role , Item ) 
	local sk_add = SK_PJ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3239	�������������
------
function Sk_Script_Fnq( role , Item ) 
	local sk_add = SK_FNQ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3197	������� ������
------
function Sk_Script_Bdj( role , Item ) 
	local sk_add = SK_BDJ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3241	����������� ������
------
function Sk_Script_Dj( role , Item ) 
	local sk_add = SK_DJ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID3242	�������
------
function Sk_Script_Shpf( role , Item )
	local sk_add = SK_SHPF
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )
		return 
	end 
end 

------
-- ID3297	��������
------
function Sk_Script_Cf( role , Item )
	local sk_add = SK_CHF
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then
		UseItemFailed ( role )
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

------
-- ID3298	���
------
function Sk_Script_Px( role , Item )
	local sk_add = SK_PAX
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

------
-- ID3300	������� �����
------
function Sk_Script_MLCH( role , Item )
	local sk_add = SK_MLCH
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

------
-- ID3301	����������� �������������
------
function Sk_Script_BLYZ( role , Item )
	local sk_add = SK_BLYZ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

function AddSailSkill ( role , i , sk_add , sailexp_req ) 
	LG ( "AddSailSkill" , "__add a new sailsk________________________ "  ) 

	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= i - 1  then 
		SystemNotice ( role , "��� ����� �� � ��������� ������� ��� ������� ������� ������." ) 
		UseItemFailed ( role )  
		return 
	end 

	local sail_exp_remain = GetChaAttr ( role , ATTR_CLEFT_SAILEXP ) 
	if sail_exp_remain < sailexp_req  then 
		SystemNotice ( role , "����� ��������� ������������. ���������� ������� ������� ������. ����������, ���������� �����!" ) 
		UseItemFailed ( role )  
		return 
	end 
	LG ( "AddSailSkill" , "Skill ID" ,  sk_add , "  Skill Level  " , i  ) 
	LG ( "AddSailSkill" , " Exisiting Navigation EXP  " , sail_exp_remain , "  Navigation EXP consumed " , sailexp_req ) 
	sail_exp_remain = sail_exp_remain - sailexp_req 
	LG ( "AddSailSkill" , " Remaining Navigation EXP  " , sail_exp_remain ) 

	SetCharaAttr ( sail_exp_remain , role , ATTR_CLEFT_SAILEXP ) 
	SystemNotice ( role , "�������������� ����� ������������:" .. sailexp_req ) 

	a = AddChaSkill ( role , sk_add, 1 , 0 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Hpsl1 ( role , Item )
	local i = 1
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl2 ( role , Item )
	local i = 2
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl3 ( role , Item )
	local i = 3
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl4 ( role , Item )
	local i = 4
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl5 ( role , Item )
	local i = 5
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl6 ( role , Item )
	local i = 6
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl7 ( role , Item )
	local i = 7
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl8 ( role , Item )
	local i = 8
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl9 ( role , Item )
	local i = 9
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl10 ( role , Item )
	local i = 10
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg1 ( role , Item )
	local i = 1
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg2 ( role , Item )
	local i = 2
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg3 ( role , Item )
	local i = 3
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg4 ( role , Item )
	local i = 4
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg5 ( role , Item )
	local i = 5
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg6 ( role , Item )
	local i = 6
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg7 ( role , Item )
	local i = 7
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg8 ( role , Item )
	local i = 8
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg9 ( role , Item )
	local i = 9
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg10 ( role , Item )
	local i = 10
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs1 ( role , Item )
	local i = 1
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs2 ( role , Item )
	local i = 2
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs3 ( role , Item )
	local i = 3
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs4 ( role , Item )
	local i = 4
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs5 ( role , Item )
	local i = 5
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs6 ( role , Item )
	local i = 6
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs7 ( role , Item )
	local i = 7
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs8 ( role , Item )
	local i = 8
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs9 ( role , Item )
	local i = 9
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs10 ( role , Item )
	local i = 10
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh1 ( role , Item )
	local i = 1
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh2 ( role , Item )
	local i = 2
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh3 ( role , Item )
	local i = 3
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh4 ( role , Item )
	local i = 4
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh5 ( role , Item )
	local i = 5
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh6 ( role , Item )
	local i = 6
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh7 ( role , Item )
	local i = 7
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh8 ( role , Item )
	local i = 8
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh9 ( role , Item )
	local i = 9
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh10 ( role , Item )
	local i = 10
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr2 ( role , Item ) 
	local i = 2
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

--ID3294	�����������
function Sk_Script_By ( role , Item )
	local sk_add = SK_BY
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--ID3295	��������
function Sk_Script_Dl ( role , Item )
	local sk_add = SK_DL
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--ID3296	��������� �����
function Sk_Script_Btjn ( role , Item )
	local sk_add = SK_BAT
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--ID3299	������
function Sk_Script_Pkqx ( role , Item )
	local sk_add = SK_PKQX
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--ID3141	�������� �����
function Jz_Script_hc(role, Item )
	local i = CheckBagItem(role,3141)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3141,1)
			if j == 1 then
				MoveCity(role,"")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID4602	����� �� �����������
function Jz_Script_bycs(role, Item )
	local i = CheckBagItem(role,4602)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,4602,1)
			if j == 1 then
				MoveCity(role,"Argent City")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID4603	����� �� �������
function Jz_Script_slcs(role, Item )
	local i = CheckBagItem(role,4603)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,4603,1)
			if j == 1 then
				MoveCity(role,"Shaitan City")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID4604	����� �� ������
function Jz_Script_blbcs(role, Item )
	local i = CheckBagItem(role,4604)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,4604,1)
			if j == 1 then
				MoveCity(role,"Icicle Castle")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID332	����� �� �. �����
function Jz_Script_cfzs(role, Item )
	local i = CheckBagItem(role,332)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,332,1)
			if j == 1 then
				MoveCity(role,"Spring Town")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID4547	����������� ���
function ItemUse_Wood ( role , Item ) 
	local k = ChaIsBoat ( role ) 
	if k == 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "������� ����� ���� ����������� ������ �� ����" )
		return 
	end 
	local hp = GetChaAttr ( role , ATTR_HP ) 
	local mxhp = GetChaAttr ( role, ATTR_MXHP ) 
	if hp < 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "��� ������� �������. ���������� ������������ �������" ) 
	end 
	local statelv = 1
	local statetime = 63
	AddState ( role , role , STATE_MCK , statelv , statetime )
end

function State_MCK_Add ( role , statelv )
	local hpdmg = -100
	Hp_Endure_Dmg ( role , hpdmg )
	ALLExAttrSet(role)
end 

function State_MCK_Rem ( role , statelv ) 
end

--ID4551	����
function ItemUse_Fish ( role , Item ) 
	local k = ChaIsBoat ( role ) 
	if k == 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "������� ����� ���� ����������� ������ �� ����" )
		return 
	end 
	local sp = GetChaAttr ( role , ATTR_SP ) 
	local mxsp = GetChaAttr ( role, ATTR_MXSP ) 
	local hp = GetChaAttr ( role , ATTR_HP ) 
	local mxhp = GetChaAttr ( role, ATTR_MXHP ) 
	if hp < 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "��� ������� �������. ���������� ������������ �������" ) 
	end 
	local sp_resume = 50 
	sp = math.min ( mxsp , sp + sp_resume  ) 
	SetCharaAttr ( sp , role , ATTR_SP ) 
end 

--ID3915	������ �����
function ItemUse_YB ( role , Item )
	local exp = Exp ( role )
	local charLv=Lv ( role )
	local exp_new = 0
	if charLv >= 80 then
		exp_new = exp + 6
	else
		exp_new = exp + 300
	end
	SetCharaAttr ( exp_new , role , ATTR_CEXP )
end

--ID1815	�������� ������
function ItemUse_HLBX ( role , Item )
	local item_type = BaoXiang_HLBX 
	local item_type_rad = BaoXiang_HLBX_Rad 
	local item_type_count = BaoXiang_HLBX_Count 
	local maxitem = BaoXiang_HLBX_Mxcount
	local item_quality = BaoXiang_HLBX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	--local itemname = GetItemName ( ItemId ) 
	--local cha_name = GetChaDefaultName ( role ) 
	--local message = cha_name.." ��������� ������ � �������� "..itemname  
	--Notice ( message )
end 

--ID1814	����������� ������
function ItemUse_SMBX ( role , Item )
	local item_type = BaoXiang_SMBX 
	local item_type_rad = BaoXiang_SMBX_Rad 
	local item_type_count = BaoXiang_SMBX_Count 
	local maxitem = BaoXiang_SMBX_Mxcount
	local item_quality = BaoXiang_SMBX_Qua
	local General = 0  
	local ItemId = 0 

	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	--local itemname = GetItemName ( ItemId ) 
	--local cha_name = GetChaDefaultName ( role ) 
	--local message = cha_name.." ��������� ������ � �������� "..itemname  
	--Notice ( message )
end 

--ID2442	���������� ����
--ID2443	���������� ����
--ID1852	������� ������
function ItemUse_SYBOX ( role , Item )
	local item_type = BaoXiang_SYBOX 
	local item_type_rad = BaoXiang_SYBOX_Rad 
	local item_type_count = BaoXiang_SYBOX_Count 
	local maxitem = BaoXiang_SYBOX_Mxcount
	local item_quality = BaoXiang_SYBOX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	 if ItemId >= 0183 and  ItemId <= 0199 then
		local itemname = GetItemName ( ItemId ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = cha_name.." ��������� ������ � �������� "..itemname  
		Notice ( message )
	end
end

--ID1851	������ � ������
function ItemUse_WZX ( role , Item )
	local item_type = BaoXiang_WZX 
	local item_type_rad = BaoXiang_WZX_Rad
	local item_type_count = BaoXiang_WZX_Count
	local maxitem = BaoXiang_WZX_Mxcount
	local item_quality = BaoXiang_WZX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
--	local itemname = GetItemName ( ItemId ) 
--	local cha_name = GetChaDefaultName ( role ) 
--	local message = cha_name.." ��������� ������ � ��������"..itemname  
--	Notice ( message )
end

--ID3400	��������� ������ �������
function ItemUse_KLJS ( role , Item )
	local item_type = BaoXiang_KLJS 
	local item_type_rad = BaoXiang_KLJS_Rad 
	local item_type_count = BaoXiang_KLJS_Count 
	local maxitem = BaoXiang_KLJS_Mxcount
	local item_quality = BaoXiang_KLJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end 

--ID3401	��������� ������ ��������
function ItemUse_KLLR ( role , Item )
	local item_type = BaoXiang_KLLR 
	local item_type_rad = BaoXiang_KLLR_Rad 
	local item_type_count = BaoXiang_KLLR_Count 
	local maxitem = BaoXiang_KLLR_Mxcount
	local item_quality = BaoXiang_KLLR_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end 

--ID3402	��������� ������ ��������
function ItemUse_KLYS ( role , Item )
	local item_type = BaoXiang_KLYS 
	local item_type_rad = BaoXiang_KLYS_Rad 
	local item_type_count = BaoXiang_KLYS_Count 
	local maxitem = BaoXiang_KLYS_Mxcount
	local item_quality = BaoXiang_KLYS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3403	��������� ������ �������������
function ItemUse_KLMX ( role , Item )
	local item_type = BaoXiang_KLMX 
	local item_type_rad = BaoXiang_KLMX_Rad 
	local item_type_count = BaoXiang_KLMX_Count 
	local maxitem = BaoXiang_KLMX_Mxcount
	local item_quality = BaoXiang_KLMX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3404	������ ���������� �������
function ItemUse_ZSSJ ( role , Item )
	local item_type = BaoXiang_ZSSJ 
	local item_type_rad = BaoXiang_ZSSJ_Rad 
	local item_type_count = BaoXiang_ZSSJ_Count 
	local maxitem = BaoXiang_ZSSJ_Mxcount
	local item_quality = BaoXiang_ZSSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3405	������ ���������� ��������
function ItemUse_ZSJS ( role , Item )
	local item_type = BaoXiang_ZSJS 
	local item_type_rad = BaoXiang_ZSJS_Rad 
	local item_type_count = BaoXiang_ZSJS_Count 
	local maxitem = BaoXiang_ZSJS_Mxcount
	local item_quality = BaoXiang_ZSJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3406	������ ���������� �������
function ItemUse_ZSJJ ( role , Item )
	local item_type = BaoXiang_ZSJJ
	local item_type_rad = BaoXiang_ZSJJ_Rad 
	local item_type_count = BaoXiang_ZSJJ_Count 
	local maxitem = BaoXiang_ZSJJ_Mxcount
	local item_quality = BaoXiang_ZSJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3407	������ ���������� ������������
function ItemUse_ZSSZ ( role , Item )
	local item_type = BaoXiang_ZSSZ
	local item_type_rad = BaoXiang_ZSSZ_Rad 
	local item_type_count = BaoXiang_ZSSZ_Count 
	local maxitem = BaoXiang_ZSSZ_Mxcount
	local item_quality = BaoXiang_ZSSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3408	������ ���������� ��������
function ItemUse_ZSFY ( role , Item )
	local item_type = BaoXiang_ZSFY
	local item_type_rad = BaoXiang_ZSFY_Rad 
	local item_type_count = BaoXiang_ZSFY_Count 
	local maxitem = BaoXiang_ZSFY_Mxcount
	local item_quality = BaoXiang_ZSFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3409	C����� ���������� �������������
function ItemUse_ZSHH ( role , Item )
	local item_type = BaoXiang_ZSHH
	local item_type_rad = BaoXiang_ZSHH_Rad 
	local item_type_count = BaoXiang_ZSHH_Count 
	local maxitem = BaoXiang_ZSHH_Mxcount
	local item_quality = BaoXiang_ZSHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3410	���������� ������ �������
function ItemUse_HLSJ ( role , Item )
	local item_type = BaoXiang_HLSJ
	local item_type_rad = BaoXiang_HLSJ_Rad 
	local item_type_count = BaoXiang_HLSJ_Count 
	local maxitem = BaoXiang_HLSJ_Mxcount
	local item_quality = BaoXiang_HLSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3411	������ ������������ ��������
function ItemUse_HLJS ( role , Item )
	local item_type = BaoXiang_HLJS
	local item_type_rad = BaoXiang_HLJS_Rad 
	local item_type_count = BaoXiang_HLJS_Count 
	local maxitem = BaoXiang_HLJS_Mxcount
	local item_quality = BaoXiang_HLJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3412	������ ������������ �������
function ItemUse_HLJJ ( role , Item )
	local item_type = BaoXiang_HLJJ
	local item_type_rad = BaoXiang_HLJJ_Rad 
	local item_type_count = BaoXiang_HLJJ_Count 
	local maxitem = BaoXiang_HLJJ_Mxcount
	local item_quality = BaoXiang_HLJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3413	���������� ������ ������������
function ItemUse_HLSZ ( role , Item )
	local item_type = BaoXiang_HLSZ
	local item_type_rad = BaoXiang_HLSZ_Rad 
	local item_type_count = BaoXiang_HLSZ_Count 
	local maxitem = BaoXiang_HLSZ_Mxcount
	local item_quality = BaoXiang_HLSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3414	������ ������������ ��������
function ItemUse_HLFY ( role , Item )
	local item_type = BaoXiang_HLFY
	local item_type_rad = BaoXiang_HLFY_Rad 
	local item_type_count = BaoXiang_HLFY_Count 
	local maxitem = BaoXiang_HLFY_Mxcount
	local item_quality = BaoXiang_HLFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3415	������ ������������ �������������
function ItemUse_HLHH ( role , Item )
	local item_type = BaoXiang_HLHH
	local item_type_rad = BaoXiang_HLHH_Rad 
	local item_type_count = BaoXiang_HLHH_Count 
	local maxitem = BaoXiang_HLHH_Mxcount
	local item_quality = BaoXiang_HLHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3416	�������� ������ �������
function ItemUse_MSJ ( role , Item )
	local item_type = BaoXiang_MSJ
	local item_type_rad = BaoXiang_MSJ_Rad 
	local item_type_count = BaoXiang_MSJ_Count 
	local maxitem = BaoXiang_MSJ_Mxcount
	local item_quality = BaoXiang_MSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3417	������������ ������ ��������
function ItemUse_MJS ( role , Item )
	local item_type = BaoXiang_MJS
	local item_type_rad = BaoXiang_MJS_Rad 
	local item_type_count = BaoXiang_MJS_Count 
	local maxitem = BaoXiang_MJS_Mxcount
	local item_quality = BaoXiang_MJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3418	������������ ������ �������
function ItemUse_MJJ ( role , Item )
	local item_type = BaoXiang_MJJ
	local item_type_rad = BaoXiang_MJJ_Rad 
	local item_type_count = BaoXiang_MJJ_Count 
	local maxitem = BaoXiang_MJJ_Mxcount
	local item_quality = BaoXiang_MJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3419	������������ ������ ������������
function ItemUse_MSZ ( role , Item )
	local item_type = BaoXiang_MSZ
	local item_type_rad = BaoXiang_MSZ_Rad 
	local item_type_count = BaoXiang_MSZ_Count 
	local maxitem = BaoXiang_MSZ_Mxcount
	local item_quality = BaoXiang_MSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3420	������������ ������ ��������
function ItemUse_MFY ( role , Item )
	local item_type = BaoXiang_MFY
	local item_type_rad = BaoXiang_MFY_Rad 
	local item_type_count = BaoXiang_MFY_Count 
	local maxitem = BaoXiang_MFY_Mxcount
	local item_quality = BaoXiang_MFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3421	������������ ������ ���������� �����
function ItemUse_MHH ( role , Item )
	local item_type = BaoXiang_MHH
	local item_type_rad = BaoXiang_MHH_Rad 
	local item_type_count = BaoXiang_MHH_Count 
	local maxitem = BaoXiang_MHH_Mxcount
	local item_quality = BaoXiang_MHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3422	������ �� ����������� ������
function ItemUse_FLBX ( role , Item )
	local item_type = BaoXiang_FLBX
	local item_type_rad = BaoXiang_FLBX_Rad 
	local item_type_count = BaoXiang_FLBX_Count 
	local maxitem = BaoXiang_FLBX_Mxcount
	local item_quality = BaoXiang_FLBX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3423	������ � ������ ����
function ItemUse_ZZBX ( role , Item )
	local item_type = BaoXiang_ZZBX
	local item_type_rad = BaoXiang_ZZBX_Rad 
	local item_type_count = BaoXiang_ZZBX_Count 
	local maxitem = BaoXiang_ZZBX_Mxcount
	local item_quality = BaoXiang_ZZBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3424	������ �� ���� �������
function ItemUse_MFBX ( role , Item )
	local item_type = BaoXiang_MFBX
	local item_type_rad = BaoXiang_MFBX_Rad 
	local item_type_count = BaoXiang_MFBX_Count 
	local maxitem = BaoXiang_MFBX_Mxcount
	local item_quality = BaoXiang_MFBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--	3458	������ ����������
function ItemUse_MZBX ( role , Item )
	local item_type = BaoXiang_MZBX
	local item_type_rad = BaoXiang_MZBX_Rad 
	local item_type_count = BaoXiang_MZBX_Count 
	local maxitem = BaoXiang_MZBX_Mxcount
	local item_quality = BaoXiang_MZBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������ � �������� "..itemname  
	Notice ( message )
end

--ID3459	������� ����
function ItemUse_BOMB ( role , Item ) 
	local bomb = SummonCha ( role , 1 , 704 ) 
	local statetime = 10 
	local statelv = 1 
	AddState ( role , bomb , STATE_BOMB , statelv , statetime ) 
	AddChaSkill ( bomb , SK_BOMB , 1 , 1 , 0 ) 
	SystemNotice ( role , "���� ������� �����������!" ) 
end 

--ID1854	����� �����
function ItemUse_PKMNYS ( role , Item )
	local statelv = 10
	local statetime = 1800
	AddState( role , role , STATE_PKMNYS , statelv , statetime )
end

--ID1855	������ �����
function ItemUse_PKZDYS ( role , Item )
	local statelv = 10
	local statetime = 150
	AddState( role , role , STATE_PKZDYS , statelv , statetime )
end

--ID1856	����� ��������
function ItemUse_PKKBYS ( role , Item )
	local statelv = 10
	local statetime = 20
	AddState( role , role , STATE_PKKBYS , statelv , statetime )
end

--ID1857	�����������
function ItemUse_PKJSYS ( role , Item )
	local statelv = 10
	local statetime = 180
	AddState( role , role , STATE_PKJSYS , statelv , statetime )
end

--ID1858	����������� �����
function ItemUse_PKSFYS ( role , Item )
	local statelv = 10
	local statetime = 300
	AddState( role , role , STATE_PKSFYS , statelv , statetime )
end

--ID1859	����� ��������
function ItemUse_PKJZYS ( role , Item )
	local statelv = 10
	local statetime = 900
	AddState( role , role , STATE_PKJZYS , statelv , statetime )
end

--ID1860	��������������� �����
function ItemUse_PKWDYS ( role , Item )
	local statelv = 10
	local statetime = 15
	AddState( role , role , STATE_PKWD , statelv , statetime )
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ���������� ���������� � ������� 15 ������!"
	Notice ( message )
end

--ID1861	������������ ����������� ���
function ItemUse_PKMCK ( role , Item )
	local map_name = GetChaMapName ( role )
	if map_name == "secretgarden" then
		local hpdmg = -500   
		Hp_Endure_Dmg ( role , hpdmg ) 
		ALLExAttrSet(role)
	else
		SystemNotice ( role , "���� ������� ����� ������������ ������ � ���� �����" )
	end
end

--ID3828	����� �� ����������
function Jz_Script_ltcs(role, Item )
	local i = CheckBagItem(role,3828)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3828,1)
			if j == 1 then
				MoveCity(role,"Thundoria Castle")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3829	����� �� ������ ����������
function Jz_Script_ltjgcs(role, Item )
	local i = CheckBagItem(role,3829)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3829,1)
			if j == 1 then
				MoveCity(role,"Thundoria Harbor")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3830	����� �� ��������� ������� ����
function Jz_Script_sxscs(role, Item )
	local i = CheckBagItem(role,3830)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3830,1)
			if j == 1 then
				MoveCity(role,"Sacred Snow Mountain")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3831	����� � ��������� ���
function Jz_Script_laslcs(role, Item )
	local i = CheckBagItem(role,3831)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3831,1)
			if j == 1 then
				MoveCity(role,"Andes Forest Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3832	����� �� ������ ������
function Jz_Script_sqcs(role, Item )
	local i = CheckBagItem(role,3832)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3832,1)
			if j == 1 then
				MoveCity(role,"Oasis Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3833	����� �� �������� ����
function Jz_Script_bjcs(role, Item )
	local i = CheckBagItem(role,3833)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3833,1)
			if j == 1 then
				MoveCity(role,"Icespire Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3834	����� � �������� �����
function Jz_Script_jmztcs(role, Item )
	local i = CheckBagItem(role,3834)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3834,1)
			if j == 1 then
				MoveCity(role,"Lone Tower Entrace")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3835	����� � ������ ������
function Jz_Script_scrkcs(role, Item )
	local i = CheckBagItem(role,3835)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3835,1)
			if j == 1 then
				MoveCity(role,"Barren Cavern Entrance")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3836	����� � ����������� ����� 2
function Jz_Script_fk2cs(role, Item )
	local i = CheckBagItem(role,3836)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3836,1)
			if j == 1 then
				MoveCity(role,"Abandon Mine 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3837	����� �� ����������� ����� 2
function Jz_Script_yk2cs(role, Item )
	local i = CheckBagItem(role,3837)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3837,1)
			if j == 1 then
				MoveCity(role,"Silver Mine 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3838	����� �� ����������� ����� 3
function Jz_Script_yk3cs(role, Item )
	local i = CheckBagItem(role,3838)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3838,1)
			if j == 1 then
				MoveCity(role,"Silver Mine 3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3839	����� � �������� ����� 2
function Jz_Script_jmzt2cs(role, Item )
	local i = CheckBagItem(role,3839)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3839,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3840	����� � �������� ����� 3
function Jz_Script_jmzt3cs(role, Item )
	local i = CheckBagItem(role,3840)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3840,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3841	����� � �������� ����� 4
function Jz_Script_jmzt4cs(role, Item )
	local i = CheckBagItem(role,3841)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3841,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 4")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3842	����� � �������� ����� 5
function Jz_Script_jmzt5cs(role, Item )
	local i = CheckBagItem(role,3842)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3842,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 5")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3843	����� � �������� ����� 6
function Jz_Script_jmzt6cs(role, Item )
	local i = CheckBagItem(role,3843)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3843,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 6")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--ID3847	����� �� ����������� ����� 1
function Jz_Script_fk1cs(role, Item )
	local i = CheckBagItem(role,3847)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3847,1)
			if j == 1 then
				MoveCity(role,"Abandon Mine 1")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3844	�������� �����
function ItemUse_MoreExpGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� �������� �����" )
end

--ID0849	����� ����� ������
--ID6019	������ ����� ����� ������
function ItemUse_ZD_MoreExpGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_ZDSBJYGZ )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_ZDSBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_ZDSBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� ������ ����� ������" )
end

--ID1006	����� ��� �����
--ID3845	������������ �����
function ItemUse_MoreItemGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end
	
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� ������������ �����" )
end

--ID3879	������ ����������
function ItemUse_MoreExpGzLv2( role , Item )
	local Lv = Lv( role )
	if Lv < 40 then
		SystemNotice(role ,"������ ���������� ����� ������������ ������ ������ ���� 40 ������.")
		UseItemFailed ( role )
		return
	end

	local statelv = 2

	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� ������� �����-������" )
end

--ID3881	������ �������-�����
function ItemUse_MoreItemGzLv2( role , Item )
	local Lv = Lv( role )
	if Lv < 40 then
		SystemNotice(role ,"������ �������-����� ����� ������������ ������ ������ ���� 40 ������.")
		UseItemFailed ( role )
		return
	end

	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� ������� �������-������" )
end

--ID3880	����� ����������
function ItemUse_MoreExpGzLv3( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"����� ���������� ����� ������������ ������ ������ ���� 60 ������.")
		UseItemFailed ( role )
		return
	end

	local statelv = 3

	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� ����� �����������" )
end

--ID3882	����� �������-�����
function ItemUse_MoreItemGzLv3( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"����� �������-����� ����� ������������ ������ ������ ���� 60 ������.")
		UseItemFailed ( role )
		return
	end

	local statelv = 3

	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end

	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� ����� �������-������" )
end

--ID0898	��������� �����
function ItemUse_MoreItemAndExpGz( role , Item )
	local Lv = Lv( role )
	if Lv < 30 then
		SystemNotice(role ,"��������� ����� ����� ������������ ������ ������ ���� 30 ������.")
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� ���������� ������" )
end

--ID3848	����� �������������� ������������
function ItemUse_TLHFJ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	hp_resume = 800 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
end

--ID0899	�������������� ����� ����
--ID3109	����� �������� ����
function ItemUse_XD_Str1 ( role , Item )
	local str = GetChaAttr( role , ATTR_BSTR )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "strength before edit is"..str )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if str <= 5 then 
		SystemNotice ( role , "� ���� ������������ ����� ������������� ��� ������. ����� ����������!" )
		UseItemFailed ( role )
		return
	end
	local str_dif = 1
	local ap_dif = 1
	str = str - str_dif
	ap = ap + 1

	SystemNotice ( role , "���������� 1 ���� ����, ������ � ���� ��������� ��������� ���� �������������. ���������� ��� �����!" )
--	SystemNotice ( role , "strength before edit is"..str )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( str , role , ATTR_BSTR )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--ID0900	����� ������ ������������
--ID3110	����� �������� ������������
function ItemUse_XD_Con1 ( role , Item )
	local con = GetChaAttr( role , ATTR_BCON )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "constitution before edit is"..con )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if con <= 5 then 
		SystemNotice ( role , "� ���� ������������ ����� ������������� ��� ������. ����� ����������!" )
		UseItemFailed ( role )
		return
	end
	local con_dif = 1
	local ap_dif = 1
	con = con - con_dif
	ap = ap + 1

	SystemNotice ( role , "���������� 1 ���� ������������, ������ � ���� ��������� ��������� ���� �������������. ���������� ��� �����!" )
	
--	SystemNotice ( role , "constitution edited to"..con )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( con , role , ATTR_BCON )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--ID0901	�������������� ����� ��������
--ID3111	����� �������� ��������
function ItemUse_XD_Agi1 ( role , Item )
	local agi = GetChaAttr( role , ATTR_BAGI )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "agility before edit is"..agi )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if agi <= 5 then 
		SystemNotice ( role , "� ���� ������������ ����� ������������� ��� ������. ����� ����������!" )
		UseItemFailed ( role )
		return
	end
	local agi_dif = 1
	local ap_dif = 1
	agi = agi - agi_dif
	ap = ap + 1

	SystemNotice ( role , "���������� 1 ���� ��������, ������ � ���� ��������� ��������� ���� �������������. ���������� ��� �����!" )
	
--	SystemNotice ( role , "Agility edited to"..agi )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( agi , role , ATTR_BAGI )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--ID0902	����� �������������� ��������
--ID3112	����� �������� ��������
function ItemUse_XD_Dex1 ( role , Item )
	local dex = GetChaAttr( role , ATTR_BDEX )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "Accuracy edited to"..dex )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if dex <= 5 then 
		SystemNotice ( role , "� ���� ������������ ����� ������������� ��� ������. ����� ����������!" )
		UseItemFailed ( role )
		return
	end
	local dex_dif = 1
	local ap_dif = 1
	dex = dex - dex_dif
	ap = ap + 1

	SystemNotice ( role , "���������� 1 ���� ��������, ������ � ���� ��������� ��������� ���� �������������. ���������� ��� �����!" )
	
--	SystemNotice ( role , "accuracy edit as"..dex )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( dex , role , ATTR_BDEX )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--ID0903	����� ������ ����
--ID3113	����� �������� ����
function ItemUse_XD_Sta1 ( role , Item )
	local sta = GetChaAttr( role , ATTR_BSTA )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "spirit before edit is"..sta )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if sta <= 5 then 
		SystemNotice ( role , "� ���� ������������ ����� ������������� ��� ������. ����� ����������!" )
		UseItemFailed ( role )
		return
	end
	local sta_dif = 1
	local ap_dif = 1
	sta = sta - sta_dif
	ap = ap + 1

	SystemNotice ( role , "���������� 1 ���� ����, ������ � ���� ��������� ��������� ���� �������������. ���������� ��� �����!" )
	
--	SystemNotice ( role , "Spirit edited as "..sta )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( sta , role , ATTR_BSTA )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--ID0893	����� ��������
function ItemUse_SPLhyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSLQQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end

	if OtherStateLv > 0 then
		SystemNotice(role ,"����� ������ ����� � ���������������, ������������ �� �����!")
		UseItemFailed ( role )
		return
	end
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSMJQH , statelv , statetime )
end

--ID0894	����� ����
function ItemUse_SPYyyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end

	if OtherStateLv > 0 then
		SystemNotice(role ,"����� ������ ����� � ���������������, ������������ �� �����!")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSLQQH , statelv , statetime )

end

--ID0895	����� ����
function ItemUse_SPMnyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end

	if OtherStateLv > 0 then
		SystemNotice(role ,"����� ������ ����� � ���������������, ������������ �� �����!")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSTZQH , statelv , statetime )

end

--ID0896	����� ����
function ItemUse_SPSlyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end

	if OtherStateLv > 0 then
		SystemNotice(role ,"����� ������ ����� � ���������������, ������������ �� �����!")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSJSQH , statelv , statetime )

end

--ID0897	����� ����
function ItemUse_SPXsyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSJSQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end

	if OtherStateLv > 0 then
		SystemNotice(role ,"����� ������ ����� � ���������������, ������������ �� �����!")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSLLQH , statelv , statetime )

end

--ID3074	��������� ��������
--ID3883	����� ��������� �����
function ItemUse_LSDZG ( role , Item )
	local statelv = 4
	local statetime = 60
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_JLGLJB , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end
--�� 8150	����� ������� �����
function ItemUse_LSDZGgr ( role , Item )
	local statelv = 10
	local statetime = 60
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_JLGLJB , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end


--ID3075	�������������� �����������
--ID3884	������� ������������ �����
function ItemUse_HSDZG ( role , Item )
	local statelv = 2
	local statetime = 60
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_HCGLJB , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

--ID8151	����� ����� ���������
function ItemUse_HSDZGgr ( role , Item )
	local statelv = 10
	local statetime = 60
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_HCGLJB , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end


--ID3888	���������� �������������� �����
function ItemUse_DSSDM ( role , Item )
	local statelv = 1
	local statetime = 300
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSFYS , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

--ID3896	������� ���
function ItemUse_XEZJ ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKZDYS , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

--ID851	������ �����
function ItemUse_XEZJB ( role , Item )
	Rem_State_StarUnnormal ( role )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_KUANGZ , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

--ID3899	���������� �������
function ItemUse_SDTG ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	local sp = GetChaAttr(role, ATTR_SP) 
	
	hp_resume = 30 
	sp_resume = 10
	
	hp = hp + hp_resume 
	sp = sp + sp_resume 

	mxhp = GetChaAttr(role,ATTR_MXHP) 
	mxsp = GetChaAttr(role,ATTR_MXSP) 

	if hp > mxhp then 
		hp = mxhp 
	end 

	if sp > mxsp then 
		sp = mxsp 
	end 

	SetCharaAttr(hp, role, ATTR_HP)
	SetCharaAttr(sp, role, ATTR_SP) 
end

--ID3895	�������������� �����
function ItemUse_SDWZBOX ( role , Item )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	
	if CheckDateNum < 122423  then
		SystemNotice ( role , "���������� ������ ��������. ��� �����, ����� ����������� ��������� �� ������� �������� ����� ��������. ����������� � 11 ������ 24 ������� �� 6 ���� 25 �������." )
		UseItemFailed ( role )
		return
	end
	
	if CheckDateNum > 122506 then
		SystemNotice ( role , "��� ����� ��� ����. ����� ���������� ����." )
		UseItemFailed ( role )
		return
	end
	
	local item_type = BaoXiang_SDWZBOX
	local item_type_rad = BaoXiang_SDWZBOX_Rad 
	local item_type_count = BaoXiang_SDWZBOX_Count 
	local maxitem = BaoXiang_SDWZBOX_Mxcount
	local item_quality = BaoXiang_SDWZBOX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k

		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
end

--ID3898	���������� ���������
function ItemUse_SDLHBOX ( role , Item )
	SystemNotice(role,"���������� ���������� � ���������������� �������� - ���� ��� ��������� �������. ����� ��� ����� � ������� ����� ������� (2273,2769).")
	UseItemFailed ( role )
end

--ID3901	���������� �������
function ItemUse_HYBOX ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 1 then
		SystemNotice(role ,"������������ ����� � ���������, ��� �� ������� ���������� �������!")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat == nil then
		local rand = math.random( 1 , 1000 )
		if rand == 1000 then
			AddMoney ( role , 0 , 1000000 )
		else
			local Money_Add = math.random( 1500 , 7000 )
			AddMoney ( role , 0 , Money_Add )
			GiveItem ( role , 0 , 3904 , 1 , 5 )
		end
	else
		SystemNotice( role , "���������� ������������ � ����!" )
		UseItemFailed ( role )
		return
	end
end
--[[
--ID3902	���������� �������
function ItemUse_FGBOX ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 1 then
		SystemNotice(role ,"������������ ����� � ���������, ��� �� ������� ���������� �������!")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat == nil then
		local exp_dif = 0
		exp_dif = math.random ( 2 , 3 )
		exp_dif = exp_dif * 50
		local exp = Exp ( role )
		if Lv ( TurnToCha ( role )  )  >= 80 then 
			exp_dif = math.floor ( exp_dif / 50  ) 
		end
		local exp_new = exp + exp_dif
		SetCharaAttr ( exp_new , role , ATTR_CEXP )
		GiveItem ( role , 0 , 3904 , 1 , 5 )
	else
		SystemNotice( role , "���������� ������������ � ����!" )
		UseItemFailed ( role )
		return
	end
end
--]]
function ItemUse_FGBOX ( role , Item )
	AddMoney ( role , 0 , 88 )
	local item_type = BaoXiang_FGBOX 
	local item_type_rad = BaoXiang_FGBOX_Rad 
	local item_type_count = BaoXiang_FGBOX_Count 
	local maxitem = BaoXiang_FGBOX_Mxcount
	local item_quality = BaoXiang_FGBOX_Qua
	local General = 0  
	local ItemId = 0 
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
--	if Item_CanGet <= 1 then
--		SystemNotice(role ,"Insufficient space in inventory. Unable to use Fortune Packet")
--		UseItemFailed ( role )
--		return
--	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	GiveItem ( role , 0 , 3904 , 1 , item_quality )

	if ItemId == 878 then
		local itemname = GetItemName ( ItemId ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = cha_name.."  \238\242\234\240\251\226\224\229\242 \207\238\228\224\240\238\234 \212\238\240\242\243\237\251 \232 \239\238\235\243\247\224\229\242 "..itemname  
		Notice ( message )
	end
end 

--ID3903	������� �����
function ItemUse_HYUNBOX ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 1 then
		SystemNotice(role ,"������������ ����� � ���������, ��� �� ������� ������� �����!")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat == nil then
		local ItemId = { 1 }
		local c = 1
		ItemId = { 3844, 3845, 1814 }
		c = math.random(1,3)

		GiveItem ( role , 0 , ItemId[c] , 1 , 4 )
		GiveItem ( role , 0 , 3904 , 1 , 5 )
		local GoodItem = {}
		GoodItem[1] = 3844
		GoodItem[2] = 3845
		GoodItem[3] = 1814

		local Good_C = 0
		for Good_C = 1 , 3 , 1 do
			if ItemId[c] == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId[c] ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.." ������ ������� ����� � ������� "..itemname  
				Notice ( message )
			end
		end
	else
		SystemNotice( role , "���������� ������������ � ����!" )
		UseItemFailed ( role )
		return
	end
end 

--ID3905	������ ������ �������
function ItemUse_ADBOX ( role , Item )
	local item_type = BaoXiang_ADBOX 
	local item_type_rad = BaoXiang_ADBOX_Rad 
	local item_type_count = BaoXiang_ADBOX_Count 
	local maxitem = BaoXiang_ADBOX_Mxcount
	local item_quality = BaoXiang_ADBOX_Qua
	local General = 0  
	local ItemId = 0 
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
--	if Item_CanGet <= 0 then
--		SystemNotice(role ,"Insufficient space in inventory. Unable to use Wishing Stone")
--		UseItemFailed ( role )
--		return
--	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
--	local itemname = GetItemName ( ItemId ) 
--	local cha_name = GetChaDefaultName ( role ) 
--	local message = cha_name.."rubbed a Wishing Stone and obtained"..itemname  
--	Notice ( message )
end 

--ID3906	���������� ������ �������
function ItemUse_SGBOX ( role , Item )
	local item_type = BaoXiang_SGBOX 
	local item_type_rad = BaoXiang_SGBOX_Rad 
	local item_type_count = BaoXiang_SGBOX_Count 
	local maxitem = BaoXiang_SGBOX_Mxcount
	local item_quality = BaoXiang_SGBOX_Qua
	local General = 0  
	local ItemId = 0 
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
--	if Item_CanGet <= 0 then
--		SystemNotice(role ,"Insufficient space in inventory. Unable to use Wishing Stone")
--		UseItemFailed ( role )
--		return
--	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	
	local GoodItem = {}
	
	GoodItem[0] = 879
	GoodItem[1] = 880
	GoodItem[2] = 881
	GoodItem[3] = 882
	GoodItem[4] = 883
	GoodItem[5] = 884
	GoodItem[6] = 885
	GoodItem[7] = 887
	GoodItem[8] = 7
	GoodItem[9] = 42
	GoodItem[10] = 18
	GoodItem[11] = 1375
	GoodItem[12] = 1384
	GoodItem[13] = 1394
	GoodItem[14] = 1411
	GoodItem[15] = 1421
	GoodItem[16] = 4198
	GoodItem[17] = 4200
	GoodItem[18] = 4202
	GoodItem[19] = 4204
	GoodItem[20] = 4206
	GoodItem[21] = 4208
	

	local Good_C = 0
	for Good_C = 0 , 21 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." ����������� ���������� ������ ������� � ������� "..itemname  
			Notice ( message )
		end
	end
end 

--ID0262	��������� ���
function ItemUse_JingLingBOX ( role, Item )
	local item_type = BaoXiang_JingLingBOX 
	local item_type_rad = BaoXiang_JingLingBOX_Rad 
	local item_type_count = BaoXiang_JingLingBOX_Count 
	local maxitem = BaoXiang_JingLingBOX_Mxcount
	local item_quality = BaoXiang_JingLingBOX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ��������� ���.")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end   
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b
		 if a <= d and a > b then
			c = k
			break
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
end

--ID3909	�����
function ItemUse_SSSJ ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	local mxhp = GetChaAttr(role,ATTR_MXHP)
	hp = hp + 0.3*mxhp 

	if hp > mxhp then 
		hp = mxhp 
	end
	SetCharaAttr(hp, role, ATTR_HP)
end

--ID3910	������������ �� �������
function ItemUse_CJTHL ( role , Item )
	GiveItem ( role , 0 , 3911 , 1 , 5 )
	local hp = GetChaAttr(role, ATTR_HP) 
	local sp = GetChaAttr(role, ATTR_SP) 

	hp_resume = 100 
	sp_resume = 100

	hp = hp + hp_resume 
	sp = sp + sp_resume 

	mxhp = GetChaAttr(role,ATTR_MXHP) 
	mxsp = GetChaAttr(role,ATTR_MXSP) 

	if hp > mxhp then 
		hp = mxhp 
	end 

	if sp > mxsp then 
		sp = mxsp 
	end 

	SetCharaAttr(hp, role, ATTR_HP)
	SetCharaAttr(sp, role, ATTR_SP)
end

--ID3342	����������
function ItemUse_Denglong ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_DENGLONG , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

--ID3343	����
function ItemUse_MeiGui ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_MEIGUI , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

--ID3077	������� �������
--ID3344	������� ��� ����������
--ID3345	�������� A
--ID3346	�������� B
--ID3347	�������� �
--ID3348	��������� A
--ID3349	��������� B
--ID3350	��������� C
--ID3351	����������� ����� A
--ID3352	����������� ����� B
--ID3353	����������� ����� C
--ID3354	�������� � ������ I
--ID3355	�������� �� ������ LOVE
--ID3356	�������� � ������ U
--ID4264	������
--ID4265	�����
--ID4266	����
--ID4267	������
--ID4268	�����
--ID4269	������
--ID4270	������
--ID4271	�����
--ID4272	�����
--ID4273	������
function ItemUse_BZ ( role , Item )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )

	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
end 

--ID0192	������ �����
function ItemUse_SaintCloth ( role , Item ) 
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"���� ���������� ��� ������� 4 ��������� ����� � ���������, ��� �� ������� ������ ������!")
		UseItemFailed ( role )
		return
	end
	if cha_type == 4 then 
		GiveItem ( cha , 0 , 828 , 1 , 0 )
	end 
	GiveItem ( cha , 0 , 825 , 1 , 0 )
	GiveItem ( cha , 0 , 826 , 1 , 0 )
	GiveItem ( cha , 0 , 827 , 1 , 0 )
end 

--ID0209	���� � �������� ��������� (����)
function ItemUse_SCBoxYXTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 2 then
		SystemNotice(role ,"��� ���� ����� ������� ������, ���������� 3 ��������� ����� ")
		UseItemFailed ( role )
		return
	end

	if cha_type == 1 then
		GiveItem ( cha , 0 , 0395 , 1 , 95 )
		GiveItem ( cha , 0 , 0587 , 1 , 95 )
		GiveItem ( cha , 0 , 0747 , 1 , 95 )
	else
		SystemNotice(role ,"���� ������ ����� ������� ������ ����!")
		UseItemFailed ( role )
		return
	end
end

--ID0210	���� � �������� ��������� (��������)
function ItemUse_SCBoxLSTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"������������ ���������� ����� � ���������, ���������� ������� ������. ")
		UseItemFailed ( role )
		return
	end
	if cha_type == 2 then
		GiveItem ( cha , 0 , 0397 , 1 , 95 )
		GiveItem ( cha , 0 , 0829 , 1 , 95 )
		GiveItem ( cha , 0 , 0603 , 1 , 95 )
	else
		SystemNotice(role ,"���� ������ ����� ������� ������ ������!")
		UseItemFailed ( role )
		return
	end
end

--ID0211	���� � �������� ��������� (�������)
function ItemUse_SCBoxHYTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 2 then
		SystemNotice(role ,"��� ���� ����� ������� ������, ���������� 3 ��������� ����� ")
		UseItemFailed ( role )
		return
	end

	if cha_type == 1 or cha_type == 3 then
		GiveItem ( cha , 0 , 0399 , 1 , 95 )
		GiveItem ( cha , 0 , 0589 , 1 , 95 )
		GiveItem ( cha , 0 , 0749 , 1 , 95 )
	else
		SystemNotice(role ,"���� ������ ����� ������� ������ ���� � ������!")
		UseItemFailed ( role )
		return
	end

end

--ID0212	���������� ������������� ���� (������/�����)
function ItemUse_SCBoxFYSTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"��� ���� ����� ������� ������, ���������� 4 ��������� ����� ")
		UseItemFailed ( role )
		return
	end
	
	if cha_type == 3 then
		GiveItem ( cha , 0 , 0401 , 1 , 95 )
		GiveItem ( cha , 0 , 0591 , 1 , 95 )
		GiveItem ( cha , 0 , 0751 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0403 , 1 , 95 )
		GiveItem ( cha , 0 , 0593 , 1 , 95 )
		GiveItem ( cha , 0 , 0753 , 1 , 95 )
		GiveItem ( cha , 0 , 2218 , 1 , 95 )
	else
		SystemNotice(role ,"���� ������ ����� ������� ������ ��� � ������!")
		UseItemFailed ( role )
		return
	end
end

--ID0213	���� � �������� ��������� (���/������� �����)
function ItemUse_SCBoxSZZTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"��� ���� ����� ������� ������, ���������� 4 ��������� �����.")
		UseItemFailed ( role )
		return
	end
	
	if cha_type == 3 then
		GiveItem ( cha , 0 , 0405 , 1 , 95 )
		GiveItem ( cha , 0 , 0595 , 1 , 95 )
		GiveItem ( cha , 0 , 0755 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0407 , 1 , 95 )
		GiveItem ( cha , 0 , 0597 , 1 , 95 )
		GiveItem ( cha , 0 , 0757 , 1 , 95 )
		GiveItem ( cha , 0 , 2220 , 1 , 95 )
	else
		SystemNotice(role ,"���� ������ ����� ������� ������ ��� � ������!")
		UseItemFailed ( role )
		return
	end
end

--ID0214	���� � �������� ��������� (������/������)
function ItemUse_SCBoxHHSTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"��� ���� ����� ������� ������, ���������� 4 ��������� �����.")
		UseItemFailed ( role )
		return
	end
	
	if cha_type == 1 or cha_type == 3 then
		GiveItem ( cha , 0 , 0409 , 1 , 95 )
		GiveItem ( cha , 0 , 0599 , 1 , 95 )
		GiveItem ( cha , 0 , 0759 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0412 , 1 , 95 )
		GiveItem ( cha , 0 , 0601 , 1 , 95 )
		GiveItem ( cha , 0 , 0761 , 1 , 95 )
		GiveItem ( cha , 0 , 2222 , 1 , 95 )
	else
		SystemNotice(role ,"���� ������ ����� ������� ������ ���, ���� � ������!")
		UseItemFailed ( role )
		return
	end
end

--ID0215	���� � ������� ������� (������
function ItemUse_SCBoxRYBZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0109 , 1 , 95 )
end

--ID0216	���� � ������� ������� (��� �������)
function ItemUse_SCBoxXMC ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0111 , 1 , 95 )
end

--ID0217	���� � ������� ������� (�����)
function ItemUse_SCBoxLQJ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0113 , 1 , 95 )
end

--ID0218	���� � ������� ������� (���)
function ItemUse_SCBoxLYJ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0115 , 1 , 95 )
end

--ID0219	���� � ������� ������� (������)
function ItemUse_SCBoxFHG ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0117 , 1 , 95 )
end

--ID0220	���� � ������� ������� (������)
function ItemUse_SCBoxLXHZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0119 , 1 , 95 )
end

--ID0221	���������� ��������� ���� (�����������)
function ItemUse_SCBoxYCJ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0150 , 1 , 95 )
end

--ID1092	������ ���������
function ItemUse_Map_YPJ ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"� ��� ������ ����, �� ������� ����, 1 ��������� ���� � ��������� ")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 1093 )
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "� ���� ��� ���� ������ ����� ��������� ��������!" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1093 , 1 , 0 )
end

--ID0684	����� ���������
function ItemUse_Map_JLBYPJ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"� ��� ������ ����, �� ������� ����, 1 ��������� ���� � ��������� ")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 682 )
	local lv= GetChaAttr(role, ATTR_LV) 
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "� ���� ��� ���� ����� ��������� ��������!" )
		UseItemFailed ( role )
		return
	end
	if lv <15 or  lv >40 then
		SystemNotice ( role , "������ ��� ������� � 15 �� 40 ������!" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 682 , 1 , 0 )
end

--ID1093	������ ����� ��������� ��������
function ItemUse_GoldenMap ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"� ��� ������ ����, �� ������� ����, 1 ��������� ���� � ��������� ")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 1093 )
	if Has_GoldenMap >= 2 then
		SystemNotice ( role , "� ��� ������, ��� ���� ������ ����� ��������� ��������. ������ ��������� �� ���������� ������� " )
		UseItemFailed ( role )
		return
	end
	local Item = GetChaItem2 ( role , 2 , 1093 )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE
	local pos_y = Item_MAXENERGY
	local Themap = Item_URE
	
	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local MapNameList = { }
	
	MapNameList [0] = "����������� �����������"
	MapNameList [1] = "��������"
	MapNameList [2] = "���������� ������"
	MapNameList [3] = "������� ����� ������"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		pos_x , pos_y , Themap = GetTheMapPos ( role , 1 )
		Item_MAXURE = pos_x
		Item_URE = Themap
		Item_MAXENERGY = pos_y
		
		SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
		SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
	end
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
	if GetPos == 0 then
		SystemNotice ( role , "��������� �������� � "..MapNameList[Themap].." �� ����������� ("..pos_x..","..pos_y..")" )
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then
		local getrandom = math.random ( 1 , 3 )
		if getrandom == 1 then
			GiveGoldenMapItem ( role )
		else
			SystemNotice ( role , "������, �� ������ �� �����. ���������� �������� ����� " )
			UseItemFailed ( role )
			return
		end
	end
end

------
-- ID0682	����� ��������� ��������
------
function ItemUse_JLB_GoldenMap ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"� ��� ������ ����, �� ������� ����, 1 ��������� ���� � ��������� ")
		UseItemFailed ( role )
		return
	end 
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv <15 or  lv >40 then
		SystemNotice ( role , "��������� ������ 15-�� ������ � ���� 40-�� �� ����� ������������ ��� ����� �������� " )
		UseItemFailed ( role )
		return
	end
	local Has_GoldenMap = CheckBagItem ( role , 682 )
	if Has_GoldenMap >= 2 then
		SystemNotice ( role , "� ��� ����� ���� ������ 1 ����� �������� � ���������. ����������, ������� ��� �������� � ���� ��������� " )
		UseItemFailed ( role )
		return
	end
	local Item = GetChaItem2 ( role , 2 , 682 )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE
	local pos_y = Item_MAXENERGY
	local Themap = Item_URE
	local MapList = { }	
	MapList [0] = "NoMap"
	MapList [1] = "jialebi"
	local MapNameList = { }
	MapNameList [0] = "����������� �����������"
	MapNameList [1] = "������ ��������"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		pos_x , pos_y , Themap = GetTheMapPos_JLB ( role , 1 )
		Item_MAXURE = pos_x
		Item_URE = Themap
		Item_MAXENERGY = pos_y
		SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
		SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
	end
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
	if GetPos == 0 then
		SystemNotice ( role , "��������� �������� � "..MapNameList[Themap].." �� ����������� ("..pos_x..","..pos_y..")" )
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then
		local getrandom = math.random ( 1 , 3 )
		if getrandom == 1 then
			GiveGoldenMapItem_JLB ( role )
		else
			SystemNotice ( role , "������, �� ������ �� �����. ���������� �������� ����� " )
			UseItemFailed ( role )
			return
		end
	end
end

--ID3338	���������� ����
function ItemUse_BirthCake ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local attr_ap = Attr_ap( role )
		local ap_extre = 3
		attr_ap = attr_ap + ap_extre 
		SetCharaAttr( attr_ap, role, ATTR_AP )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

--ID0853	������ "���������� �����"
function ItemUse_HappyBook ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3  +  Exp_star + 10
	local dif_exp_thalf_b = dif_exp_thalf - DEXP[charLv+1]
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	elseif charLv>=1 and charLv<=9 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_five )
	elseif charLv>=10 and charLv<=29 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_three )
	elseif charLv>=30 and charLv<=59 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=60 and charLv<=75 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_half )
	elseif charLv>=76 and charLv<=85 and charLv~=79  then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b<=0 then 
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b>0 then 
			dif_exp_thalf = dif_exp_thalf_b*0.02 + DEXP[charLv+1]
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv>=86 then
		SystemNotice( role , "Your level is too high to use" )
		UseItemFailed ( role )
		return
	end
end

--ID3335	�������� ���
function ItemUse_MarchElf ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		local cha_type = GetChaTypeID ( role )
		if cha_type == 3 or cha_type == 4 then
			AddState( role , role , STATE_MarchElf , statelv , statetime )
		else
			SystemNotice ( role , "Fairy March can only be used by female" )
			UseItemFailed ( role )
			return
		end
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end

end

--ID
function ItemUse_MspdYS ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )


	if Cha_Boat ==  nil then
		AddState( role , role , STATE_YSMspd , statelv , statetime )
		SystemNotice( role , "A" )

	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end

end

--ID
function ItemUse_SanJiaoFan ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatMspd , statelv , statetime )
	else
		SystemNotice( role , "������������� �������� ������ �� ����� ��������. " )
		UseItemFailed ( role )
		return
	end

end

--ID
function ItemUse_GJZhuangJia ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatDEF , statelv , statetime )
	else
		SystemNotice( role , "������������� �������� ������ �� ����� ��������. " )
		UseItemFailed ( role )
		return
	end

end

------
-- ID 3087 ������ �������
------

function ItemUse_SuanmingMoney ( role , Item )

	if CanUseItem(role) == 0 then return end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if Cha_Boat ==  nil then
		local Has_GoldenMap = CheckBagItem ( role , 3336 )
		if Has_GoldenMap >= 1 then
			SystemNotice ( role , "����������� ����������� ������" )
			SuanmingTeshu_Money ( role )
			DelBagItem( role , 3336 , 1 )
		else
			Suanming_Money ( role )
		end
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	
end

--ID3086	���������� ������
function ItemUse_SuanmingWork ( role , Item )
	if CanUseItem(role) == 0 then return end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		local lv = Lv ( role )
		local exp = Exp(role) 
		local clexp = GetChaAttrI ( role , ATTR_CLEXP )
		if lv >= 100 then
		else
			if exp < clexp then
				SystemNotice ( role , "������������� �������� �����. ���������� ������������ ������" )
				UseItemFailed ( role )
				return
			end
		end
		local Has_GoldenMap = CheckBagItem ( role , 3336 )
		if Has_GoldenMap >= 1 then
			SystemNotice ( role , "����������� ����������� ������" )
			SuanmingTeshu_Work ( role )
			DelBagItem( role , 3336 , 1 )
		else
			Suanming_Work ( role )
		end
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

--ID
function ItemUse_HuoRongSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_BDJ )
		AddState ( role , role , STATE_TTISW , 1 , 300 )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	
end

--ID
function ItemUse_ZhouGUSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_ZZZH )
		AddState ( role , role , STATE_TTISW , 2 , 300 )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	
end

--ID
function ItemUse_ShuiMangSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_CRXSF )
		AddState ( role , role , STATE_TTISW , 3 , 300 )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	
end

--ID
function ItemUse_HuFuSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_JSDD )
		AddState ( role , role , STATE_TTISW , 4 , 1200 )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	
end

--ID
function ItemUse_28BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 30 then
		SystemNotice(role ,"��� ��������� ��� ��������!")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 6) 
end 

--�� �������!
--[[function ItemUse_32BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 36 then
		SystemNotice(role ,"��� ��������� ��� ��������!")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 24 then
		SystemNotice(role ,"��� ��������� ")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end ]]--

--ID
function ItemUse_36BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 36 then
		SystemNotice(role ,"��� ��������� ��� ��������!")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 24 then
		SystemNotice(role ,"��� ��������� ��� �� ����������, ��������� ������� ��������� �� 30-�� �����!")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 6) 
end 

--ID
function ItemUse_40BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 42 then
		SystemNotice(role ,"��� ��������� ��� ��������!")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 30 then
		SystemNotice(role ,"��� ��������� ��� �� ����������, ��������� ������� ��������� �� 36-�� �����!")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 6) 
end 

--�� �������!
--[[function ItemUse_44BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 44 then
		SystemNotice(role ,"Cannot use item repeatedly")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 36 then
		SystemNotice(role ,"Cannot use item above your level")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end  ]]--

--ID
function ItemUse_48BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 48 then
		SystemNotice(role ,"��� ��������� ��� ��������!")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 36 then
		SystemNotice(role ,"��� ��������� ��� �� ����������, ��������� ������� ��������� �� 42-� �����!")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 6) 
end 

--ID
function ItemUse_BQ ( role , Item )
end 

--ID0227	������� ���
--ID2312	����������� ����
function ItemUse_SiLiao ( role , Item , Item_Traget )
	if CanUseItem(role) == 0 then return end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return
	end
	local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)
	local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Num = 2500
	if Item_type == 57 and Item_Traget_Type == 59 then
		if Item_Traget_URE < Item_Traget_MAXURE then
			Give_ElfURE ( role , Item_Traget , Num )
		else
			SystemNotice(role , "��� ����!" ) 
			UseItemFailed ( role )
			return
		end
	end 
end

--ID5644	������� ������� ���
--ID5645	������� ����-������
function ItemUse_numeneat ( role , Item , Item_Traget )
	if CanUseItem(role) == 0 then return end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return
	end
	local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)
	local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Num = 5000
	if Item_type == 57 and Item_Traget_Type == 59 then
		if Item_Traget_URE < Item_Traget_MAXURE then
			Give_ElfURE ( role , Item_Traget , Num )
		else
			SystemNotice(role , "��� ����!" ) 
			UseItemFailed ( role )
			return
		end
	end 
end

--ID3152	���� ���
function ItemUse_CWSiLiao ( role , Item , Item_Traget )
	if CanUseItem(role) == 0 then return end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end
	local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)
	local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Num = 250
	if Item_type == 57 and Item_Traget_Type == 59 then
		if Item_Traget_URE < Item_Traget_MAXURE then
		Give_ElfURE ( role , Item_Traget , Num )
	else
		SystemNotice(role , "��� ����!" ) 
			UseItemFailed ( role )
			return
		end
	end
end

--ID0222	����� �������� �������
function ItemUse_LS_longguo ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ������� �������� �������(���� +1)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Str ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0223	������� �����
function ItemUse_LS_koumei ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ������� ������(�������� +1)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Agi ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0224	������� � ������
function ItemUse_LS_yusi ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ��������� � ������(�������� +1)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Dex ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0225	���������� �����
function ItemUse_LS_guopu ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ���������� �����(������������ +1)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Con ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0226	���������� �������
function ItemUse_LS_mibing ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ���������� ���������(��� +1)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end
		end 
end

--ID
function ItemUse_HuDun_CJ ( role , Item , Item_Traget )
	if CanUseItem(role) == 0 then return end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type =  GetItemType ( Item )
	local Item_Traget_Type =  GetItemType ( Item_Traget )
	local Num = GetItemForgeParam ( Item_Traget , 1 )
	local SkillType = 1
	local SkillNum = 1
	if Item_type == 58 and Item_Traget_Type == 59 then
		local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
		if Check == 1 then
			SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
			UseItemFailed ( role )
		else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			SystemNotice( role , "����� ��� ������� ��������!" )
		end
	end
end

--ID
function ItemUse_HuDun_ZJ ( role , Item , Item_Traget )
	if CanUseItem(role) == 0 then return end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type =  GetItemType ( Item )
	local Item_Traget_Type =  GetItemType ( Item_Traget )
	local Num = GetItemForgeParam ( Item_Traget , 1 )
	local SkillType = 2
	local SkillNum = 1
	if Item_type == 58 and Item_Traget_Type == 59 then
		local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
		if Check == 1 then
			SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
			UseItemFailed ( role )
		else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			SystemNotice( role , "����� ��� ������� ��������!" )
		end
	end
end

--ID
function ItemUse_HuDun_GJ ( role , Item , Item_Traget )
			--SystemNotice( role , "s" )
--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )
--		local SkillType = 3
--		local SkillNum = 1
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )
--
--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
--			if Check == 1 then
--				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
--				UseItemFailed ( role )
--			else
				  --SystemNotice( role , "AddElfSkill" )
--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
				  --SystemNotice( role , "����� ��� ������� ��������!" )
--			end
--		end
end

--ID
function ItemUse_BaoJi_CJ ( role , Item , Item_Traget )
			--SystemNotice( role , "s" )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 1
		local SkillNum = 2
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )
		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				--SystemNotice( role , "AddElfSkill" )
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
				SystemNotice( role , "����� ��� ������� ��������!" )
			end
		end
end

--ID0247	����������� �������
function ItemUse_BaoJi_ZJ ( role , Item , Item_Traget )
			--SystemNotice( role , "s" )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 2
		local SkillNum = 2
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������." ) 
				UseItemFailed ( role )
			else
				--SystemNotice( role , "AddElfSkill" )
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
				SystemNotice( role , "����� ��� ������� ��������!" )
			end
		end
end

--ID0248	����������� �������
function ItemUse_BaoJi_GJ ( role , Item , Item_Traget )
			--SystemNotice( role , "s" )
--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )
--		local SkillType = 3		--Ҫ���ӵ� Skill ����
--		local SkillNum = 2		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
--			if Check == 1 then
--				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
--				UseItemFailed ( role )
--			else
--				 -- SystemNotice( role , "AddElfSkill" )
--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
--				  --SystemNotice( role , "����� ��� ������� ��������!" )
--			end
--		end
end

------
-- ��������� �����
------

function ItemUse_MoLi_CJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type =  GetItemType ( Item )
	local Item_Traget_Type =  GetItemType ( Item_Traget )
	local Num = GetItemForgeParam ( Item_Traget , 1 )
	local SkillType = 1
	local SkillNum = 3
	if Item_type == 58 and Item_Traget_Type == 59 then
		local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
		if Check == 1 then
			SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������." ) 
			UseItemFailed ( role )
		else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			  --SystemNotice( role , "����� ��� ������� ��������" )
		end
	end
end


----------------------------------------------------
function ItemUse_MoLi_ZJ ( role , Item , Item_Traget )   --�м�ħ��
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 3		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				  --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
				  --SystemNotice( role , "����� ��� ������� ��������!" )

			end
		end

end

----------------------------------------------------
function ItemUse_MoLi_GJ ( role , Item , Item_Traget )   --�߼�ħ��
			--SystemNotice( role , "s" )

--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
--		local SkillType = 3		--Ҫ���ӵ� Skill ����
--		local SkillNum = 3		--Ҫ���ӵ�Skill ���
--				--SystemNotice( role , SkillType )
--				--SystemNotice( role , SkillNum )
--
--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
--
--			if Check == 1 then
--				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
--				UseItemFailed ( role )
--			else
--				  --SystemNotice( role , "AddElfSkill" )
--
--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
--				  --SystemNotice( role , "����� ��� ������� ��������!" )
--
--			end
--		end

end

----------------------------------------------------
function ItemUse_HuiFu_CJ ( role , Item , Item_Traget )   --�����ָ�
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 4		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				  --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
				  --SystemNotice( role , "����� ��� ������� ��������!" )

			end
		end

end

----------------------------------------------------
function ItemUse_HuiFu_ZJ ( role , Item , Item_Traget )   --�м��ָ�
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 4		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				  --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
				  --SystemNotice( role , "����� ��� ������� ��������!" )

			end
		end

end


----------------------------------------------------
function ItemUse_HuiFu_GJ ( role , Item , Item_Traget )   --�߼��ָ�
			--SystemNotice( role , "s" )

--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
--		local SkillType = 3		--Ҫ���ӵ� Skill ����
--		local SkillNum = 4		--Ҫ���ӵ�Skill ���
--				--SystemNotice( role , SkillType )
--				--SystemNotice( role , SkillNum )
--
--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
--
--			if Check == 1 then
--				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
--				UseItemFailed ( role )
--			else
--				  --SystemNotice( role , "AddElfSkill" )
--
--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
--				  --SystemNotice( role , "����� ��� ������� ��������!" )

--			end
--		end

end

----------------------------------------------------
function ItemUse_ChenSi_CJ ( role , Item , Item_Traget )   --������˼
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 5		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				  --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
				  --SystemNotice( role , "����� ��� ������� ��������!" )

			end
		end

end

----------------------------------------------------
function ItemUse_ChenSi_ZJ ( role , Item , Item_Traget )   --�м���˼
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 5		--Ҫ���ӵ�Skill ���
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				  --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
				  --SystemNotice( role , "����� ��� ������� ��������!" )

			end
		end

end


----------------------------------------------------
function ItemUse_ChenSi_GJ ( role , Item , Item_Traget )   --�߼���˼
			--SystemNotice( role , "s" )

--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
--	if Cha_Boat ~= nil then 
--		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
--		return 
--	end 
--		local Item_type =  GetItemType ( Item )
--		local Item_Traget_Type =  GetItemType ( Item_Traget )
--		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
--		local SkillType = 3		--Ҫ���ӵ� Skill ����
--		local SkillNum = 5		--Ҫ���ӵ�Skill ���
--				--SystemNotice( role , SkillType )
--				--SystemNotice( role , SkillNum )
--
--		if Item_type == 58 and Item_Traget_Type == 59 then
--			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
--
--			if Check == 1 then
--				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
--				UseItemFailed ( role )
--			else
--				  --SystemNotice( role , "AddElfSkill" )
--
--			AddElfSkill ( Item_Traget , SkillType , SkillNum )
--				  --SystemNotice( role , "����� ��� ������� ��������!" )
--
--			end
--		end

end

-----------------------------------------------------------
--�����ٻ�

function ItemUse_MonsterSummon ( role , Item , Item_Traget )

	local Monster_GetID = {}
	Monster_GetID[1] = math.random ( 40 , 80 )
	Monster_GetID[2] = math.random ( 98 , 146 )
	Monster_GetID[3] = math.random ( 194, 241 )
	Monster_GetID[4] = math.random ( 500, 571 )
	Monster_GetID[5]= 789

	local ID_Get = math.random ( 1 , 5 )
	local x, y = GetChaPos( role )
	local MonsterID = Monster_GetID [ ID_Get ]
	local Refresh = 50					--����ʱ�䣬�뵥λ
	local life = 40000					--����ʱ�䣬���뵥λ
	local new = CreateCha( MonsterID , x , y , 145 , Refresh )
	SetChaLifeTime( new, life )

end


----------------------------------------------------------

--���ݼ�
function ItemUse_Ant_Hzcr ( role , Item , Item_Traget )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		RemoveState( Cha_Boat , STATE_HZCR )
	else
		SystemNotice( role , "Unable to use on the shore" )
		UseItemFailed ( role )
		return
	end

end


--��֮���鵰

function ItemUse_MINGZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 183  , 1 , 4 ) 
end

--��֮���鵰

function ItemUse_FAZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 184  , 1 , 4 ) 
end

--ǫ֮���鵰

function ItemUse_QIANZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 185  , 1 , 4 ) 
end

--��֮���鵰

function ItemUse_HENGZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 186  , 1 , 4 )  
end

--��֮���鵰

function ItemUse_YUZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 187  , 1 , 4 )  
end
--Ѫ֮���鵰

function ItemUse_XUEZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 188  , 1 , 4 )  
end

--��֮���鵰

function ItemUse_XINGZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 189  , 1 , 4 )  
end

--��֮���鵰

function ItemUse_HUIZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 190  , 1 , 4 )  

end

--��֮���鵰

function ItemUse_AIZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 191  , 1 , 4 )  
end

--��֮���鵰

function ItemUse_XINGZHIJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end

	GiveItem ( role , 0 , 199  , 1 , 4 )  
end
-------------------------------���˱���
function ItemUse_XRBOX( role, Item )
--	SystemNotice(role ,"Function has not been released")
--	UseItemFailed ( role )
--	return
	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 5 then
		SystemNotice(role ,"Currently lower than Lv 5. Unable to use item!")
		UseItemFailed ( role )	
	else
		GiveItem ( role , 0 , 437  , 1 , 4 )
		GiveItem ( role , 0 , 9  , 1 , 95 )
		GiveItem ( role , 0 , 4308  , 1 , 95 )
		GiveItem ( role , 0 , 444  , 1 , 4 )
	--	GiveItem ( role , 0 , 0985  , 1 , 4 )--------------35�������
	end
end


-------------------------------35������------------10��
function ItemUse_SANWUBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 10 then
		SystemNotice(role ,"Currently lower than Lv 10. Unable to use item!")
		UseItemFailed ( role )
		return
	end
	if cha_type ~= 2 and job==4 then
		GiveItem ( role , 0 , 0803 , 1 , 4 )--------------��������		
		GiveItem ( role , 0 , 0986 , 1 , 4 )--------------45������
	elseif cha_type ~= 2 and job==16 then
		GiveItem ( role , 0 , 0803 , 1 , 4 )--------------��������		
		GiveItem ( role , 0 , 0986 , 1 , 4 )--------------45������
	elseif cha_type == 2  and job~=0 then
		GiveItem ( role , 0 , 0763  , 1 , 4 )----------------��������
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==2 then
		GiveItem ( role , 0 , 0777  , 1 , 4 )-----------------�������
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==12 then
		GiveItem ( role , 0 , 0777  , 1 , 4 )-----------------�������
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==5 then
		    GiveItem ( role , 0 , 0789  , 1 , 4 )-------------�׶�����
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==13 then
		    GiveItem ( role , 0 , 0789  , 1 , 4 )-------------�׶�����
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==14 then
		    GiveItem ( role , 0 , 0789  , 1 , 4 )-------------�׶�����
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	elseif cha_type == 1 and  job==1 then
		    GiveItem ( role , 0 , 1928  , 1 , 4 )-------------���ս��
		GiveItem ( role , 0 , 0986  , 1 , 4 )--------------45������
	else 
		SystemNotice(role ,"Cannot be used right now, please find the class instructors to change class.")
		UseItemFailed ( role )
		return
	end
end


-------------------------------45������-----------35��
function ItemUse_SIWUBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 35 then
		SystemNotice(role ,"Currently lower than Lv 35. Unable to use item!")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 and job==9 then
		GiveItem ( role , 0 , 0767 , 1 , 4 )----------------����֮��ּ�	
		GiveItem ( role , 0 , 0987 , 1 , 4 )--------------55������
	elseif cha_type == 2 and job==8 then
		GiveItem ( role , 0 , 0764  , 1 , 4 )-----------------��ʿ֮��������
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 1 and job==12 then
		GiveItem ( role , 0 , 778  , 1 , 4 )-------------���ƽ�����
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 3 and job==12 then
		GiveItem ( role , 0 , 778  , 1 , 4 )-------------���ƽ�����
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 4 and job==13 then
		GiveItem ( role , 0 , 0790  , 1 , 4 )-------------��������
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 3  and job==13 then
		GiveItem ( role , 0 , 0790  , 1 , 4 )-------------��������
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 3  and job==14 then
		GiveItem ( role , 0 , 0796  , 1 , 4 )-------------����֮��
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 4 and job==14 then
		GiveItem ( role , 0 , 0796  , 1 , 4 )-------------����֮��
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 3 and job==16 then
		GiveItem ( role , 0 , 0804  , 1 , 4 )-------------�����
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type == 1 and job==16 then
		GiveItem ( role , 0 , 0804  , 1 , 4 )-------------�����
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	elseif cha_type ==4 and job==16 then
		GiveItem ( role , 0 , 0804  , 1 , 4 )-------------�����
		GiveItem ( role , 0 , 0987  , 1 , 4 )--------------55������
	else 
		SystemNotice(role ,"Cannot be used right now, please find the class instructors to change class.")
		UseItemFailed ( role )
		return
	end
end

-------------------------------55������-----------45��
function ItemUse_WUWUBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 45 then
		SystemNotice(role ,"Current level is below 45, failed to use item!")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 and job==9 then
		GiveItem ( role , 0 , 0768 , 1 , 4 )----------------����ս��		
		GiveItem ( role , 0 , 0988 , 1 , 4 )--------------65������
	elseif cha_type == 2 and job==8 then
		GiveItem ( role , 0 , 0765  , 1 , 4 )-----------------��������
		GiveItem ( role , 0 , 0988  , 1 , 4 )-------------65������
	elseif cha_type == 3 and job==12 then
		GiveItem ( role , 0 , 0779  , 1 , 4 )----------------��������
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 1 and job==12 then
		GiveItem ( role , 0 , 0779  , 1 , 4 )----------------��������
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 3 and job==13 then
		    GiveItem ( role , 0 , 0791  , 1 , 4 )----------------�÷�֮��
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 4 and job==13 then
		    GiveItem ( role , 0 , 0791  , 1 , 4 )----------------�÷�֮��
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 3 and job==14 then
		    GiveItem ( role , 0 , 0797  , 1 , 4 )----------------����֮��
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 4 and job==14 then
		    GiveItem ( role , 0 , 0797  , 1 , 4 )----------------����֮��
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 1 and job==16 then
		    GiveItem ( role , 0 , 0805  , 1 , 4 )----------------��������
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 3 and job==16 then
		    GiveItem ( role , 0 , 0805  , 1 , 4 )----------------��������
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	elseif cha_type == 4 and job==16 then
		    GiveItem ( role , 0 , 0805  , 1 , 4 )----------------��������
		GiveItem ( role , 0 , 0988  , 1 , 4 )--------------65������
	else 
		SystemNotice(role ,"Cannot be used right now, please find the class instructors to change class.")
		UseItemFailed ( role )
		return
	end
end

-------------------------------65������-----------55��
function ItemUse_LIUWUBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 55 then
		SystemNotice(role ,"Current level below 55, unable to use item!")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 and job==9 then
		GiveItem ( role , 0 , 0769 , 1 , 4 )----------------��֮ս��		
	elseif cha_type == 2 and job==8 then
		GiveItem ( role , 0 , 0766  , 1 , 4 )-----------------��֮����
	elseif cha_type == 3 and job==12 then
		GiveItem ( role , 0 , 0780  , 1 , 4 )----------------��֮����
	elseif cha_type == 1 and job==12 then
		GiveItem ( role , 0 , 0780  , 1 , 4 )----------------��֮����
	elseif cha_type == 3 and job==13 then
		    GiveItem ( role , 0 , 0792  , 1 , 4 )----------------��֮����
	elseif cha_type == 4 and job==13 then
		    GiveItem ( role , 0 , 0792  , 1 , 4 )----------------��֮����
	elseif cha_type == 3 and job==14 then
		    GiveItem ( role , 0 , 0798  , 1 , 4 )----------------���䷨��
	elseif cha_type == 4 and job==14 then
		    GiveItem ( role , 0 , 0798  , 1 , 4 )----------------���䷨��
	elseif cha_type == 1 and job==16 then
		    GiveItem ( role , 0 , 0806  , 1 , 4 )----------------�Իö���
	elseif cha_type == 3 and job==16 then
		    GiveItem ( role , 0 , 0806  , 1 , 4 )----------------�Իö���
	elseif cha_type == 4 and job==16 then
		    GiveItem ( role , 0 , 0806  , 1 , 4 )----------------�Իö���
	else 
		SystemNotice(role ,"Cannot be used right now, please find the class instructors to change class.")
		UseItemFailed ( role )
		return
	end
end


---------------------------------- ������� ������ (437)
function ItemUse_XRBOX1( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 8 then
		SystemNotice(role ,"����� ������� ������� ������ ���������� �� ����� 8 ��������� ����� � ���������")
		UseItemFailed ( role )
		return
	end
	if lv < 10 then
		SystemNotice(role ,"��� ������� ������ ���� ���� 10. ���������� ������������ �������!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 10  , 1 , 95 ) 
		GiveItem ( role , 0 , 296  , 1 , 95 )
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
		GiveItem ( role , 0 , 262  , 1 , 4 ) 
	elseif job == 2 then   
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 32  , 1 , 95 ) 
		GiveItem ( role , 0 , 311  , 1 , 95 )
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
		GiveItem ( role , 0 , 262  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
		GiveItem ( role , 0 , 262  , 1 , 4 ) 
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 80  , 1 , 95 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 336  , 1 , 95 ) 
		else 
			GiveItem ( role , 0 , 351  , 1 , 95 ) 
		end
	elseif job == 5 then   
		GiveItem ( role , 0 , 4602  , 1 , 4 ) 
		GiveItem ( role , 0 , 4603  , 1 , 4 ) 
		GiveItem ( role , 0 , 4604  , 1 , 4 ) 
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
		GiveItem ( role , 0 , 262  , 1 , 4 ) 
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 104  , 1 , 95 ) 
		if cha_type == 3 then 
			GiveItem ( role , 0 , 372  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 359  , 1 , 95 ) 
		end
	else 
		SystemNotice(role ,"������� ����� ���� ����������� ������ ����� ������ �������� ���������!")
		UseItemFailed ( role )	
	end
end
----------------------------------+2���˱���
function ItemUse_XRBOX2( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 6 then
		SystemNotice(role ,"To open a Newbie Chest requires 6 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 15 then
		SystemNotice(role ,"Currently lower than Lv 15. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 2  , 1 , 95 ) 
		GiveItem ( role , 0 , 291  , 1 , 95 )
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3351  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
	elseif job == 2 then   
		GiveItem ( role , 0 , 26  , 1 , 95 ) 
		GiveItem ( role , 0 , 306  , 1 , 95 )
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3352  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3353  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 74  , 1 , 95 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 338  , 1 , 95 )
		else
			GiveItem ( role , 0 , 386  , 1 , 95 ) 
		end
	elseif job == 5 then
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3352  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
		GiveItem ( role , 0 , 98  , 1 , 95 ) 
		if cha_type == 3 then 
			GiveItem ( role , 0 , 366  , 1 , 95 ) 
		else 
			GiveItem ( role , 0 , 381  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after basic class selection!")
		UseItemFailed ( role )	
	end
end
----------------------------------+3���˱���
function ItemUse_XRBOX3( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 5 then
		SystemNotice(role ,"To open a Newbie Chest requires 5 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 20 then
		SystemNotice(role ,"Currently lower than Lv 20. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 14  , 1 , 95 ) 
		GiveItem ( role , 0 , 297  , 1 , 95 )
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
	elseif job == 2 then  
		GiveItem ( role , 0 , 33  , 1 , 95 ) 
		GiveItem ( role , 0 , 313  , 1 , 95 )
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
		GiveItem ( role , 0 , 81  , 1 , 95 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 337  , 1 , 95 )
		else
			GiveItem ( role , 0 , 352  , 1 , 95 ) 
		end
	elseif job == 5 then 
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
		GiveItem ( role , 0 , 105  , 1 , 95 )
		if cha_type == 3 then 
			GiveItem ( role , 0 , 373  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 360  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after basic class selection!")
		UseItemFailed ( role )	
	end
end
----------------------------------+4���˱���
function ItemUse_XRBOX4( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	--local r1,r2 =MakeItem ( role , 0 , 3  , 1 , 11 )

	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 25 then
		SystemNotice(role ,"Currently lower than Lv 25. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 1 then   ----��ʿ
		local r1,r2 =MakeItem ( role , 3  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		GiveItem ( role , 0 , 293  , 1 , 95 )
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
	elseif job == 2 then  
		local r1,r2 =MakeItem ( role , 27  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		GiveItem ( role , 0 , 307  , 1 , 95 )
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
	elseif job == 4 then 
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
		local r1,r2 =MakeItem ( role , 75  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		if cha_type == 1 or cha_type == 3 then
			GiveItem ( role , 0 , 340  , 1 , 95 ) 
		else
			GiveItem ( role , 0 , 350  , 1 , 95 ) 
		end
	elseif job == 5 then 
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
		local r1,r2 =MakeItem ( role , 99  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		if cha_type == 3 then
			GiveItem ( role , 0 , 368  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 389  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after basic class selection!")
		UseItemFailed ( role )	
	end
end
----------------------------------+5���˱���
function ItemUse_XRBOX5( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Newbie Chest requires 4 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 30 then
		SystemNotice(role ,"Currently lower than Lv 30. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 12  , 1 , 95 ) 
		GiveItem ( role , 0 , 298  , 1 , 95 )
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
	elseif job == 2 then 
		GiveItem ( role , 0 , 34  , 1 , 95 ) 
		GiveItem ( role , 0 , 314  , 1 , 95 )
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 )
		GiveItem ( role , 0 , 82  , 1 , 95 )
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 339  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 354  , 1 , 95 ) 
		end
	elseif job == 5 then
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
		GiveItem ( role , 0 , 106  , 1 , 95 )
		if cha_type == 3 then
			GiveItem ( role , 0 , 374  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 361  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after basic class selection!")
		UseItemFailed ( role )	
	end
end
----------------------------------+6���˱���
function ItemUse_XRBOX6( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 2 then
		SystemNotice(role ,"To open a Newbie Chest requires 2 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 35 then
		SystemNotice(role ,"Currently lower than Lv 35. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 1 or job == 2 or job == 4 or job == 5 then
		GiveItem ( role , 0 , 443  , 1 , 4 ) 
		GiveItem ( role , 0 , 451  , 1 , 4 ) 
		AddMoney ( role , 0 , 200000 ) 
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after basic class selection!")
		UseItemFailed ( role )	
	end
end
----------------------------------+7���˱���
function ItemUse_XRBOX7( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 8 then
		SystemNotice(role ,"To open a Newbie Chest requires 8 empty slots")
		UseItemFailed ( role )
		return
	end
	if lv < 40 then
		SystemNotice(role ,"Currently lower than Lv 40. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 9 then 
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 295  , 1 , 95 )
		GiveItem ( role , 0 , 4  , 1 , 95 ) 
		GiveItem ( role , 0 , 302  , 1 , 95 )

	--	GiveItem ( role , 0 , 3404  , 8 , 4 )
	--	GiveItem ( role , 0 , 3410  , 8 , 4 )
	--	GiveItem ( role , 0 , 3416  , 8 , 4 )
		local r1,r2 =MakeItem ( role , 22  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
	elseif job == 8 then   
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 300  , 1 , 95 )
		GiveItem ( role , 0 , 15  , 1 , 95 ) 
		GiveItem ( role , 0 , 301  , 1 , 95 )

	--	GiveItem ( role , 0 , 3405  , 8 , 4 )
	--	GiveItem ( role , 0 , 3411  , 8 , 4 )
	--	GiveItem ( role , 0 , 3417  , 8 , 4 )
		local r1,r2 =MakeItem ( role , 20  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
	elseif job == 12 then 
		GiveItem ( role , 0 , 39  , 1 , 95 ) 
		GiveItem ( role , 0 , 310  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 44  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		GiveItem ( role , 0 , 315  , 1 , 95 )
		GiveItem ( role , 0 , 450  , 1 , 4 )

	--	GiveItem ( role , 0 , 3406  , 8 , 4 )
	--	GiveItem ( role , 0 , 3412  , 8 , 4 )
	--	GiveItem ( role , 0 , 3418  , 8 , 4 )
	elseif job == 16 then 
		GiveItem ( role , 0 , 450  , 1 , 95 )
		GiveItem ( role , 0 , 76  , 1 , 95 )
	--	GiveItem ( role , 0 , 3409  , 8 , 4 )
	--	GiveItem ( role , 0 , 3415  , 8 , 4 )
	--	GiveItem ( role , 0 , 3421  , 8 , 4 )
		local r1,r2 =MakeItem ( role , 83  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 341  , 1 , 95 )
			GiveItem ( role , 0 , 342  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 353  , 1 , 95 )
			GiveItem ( role , 0 , 356  , 1 , 95 )
		end
	elseif job == 13 then    
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 100  , 1 , 95 )
	--	GiveItem ( role , 0 , 3407  , 8 , 4 )
	--	GiveItem ( role , 0 , 3413  , 8 , 4 )
	--	GiveItem ( role , 0 , 3419  , 8 , 4 )
		local r1,r2 =MakeItem ( role , 1440  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		if cha_type == 3 then 
			GiveItem ( role , 0 , 370  , 1 , 95 )
			GiveItem ( role , 0 , 378  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 392  , 1 , 95 ) 
			GiveItem ( role , 0 , 388  , 1 , 95 ) 
		end
	elseif job == 14 then    
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 101  , 1 , 95 )
	--	GiveItem ( role , 0 , 3408  , 8 , 4 )
	--	GiveItem ( role , 0 , 3414  , 8 , 4 )
	--	GiveItem ( role , 0 , 3420  , 8 , 4 )
		local r1,r2 =MakeItem ( role , 107  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ȡ������������ָ��
		if cha_type == 3 then 
			GiveItem ( role , 0 , 367  , 1 , 95 ) 
			GiveItem ( role , 0 , 375  , 1 , 95 ) 
		else  
			GiveItem ( role , 0 , 390  , 1 , 95 ) 
			GiveItem ( role , 0 , 362  , 1 , 95 ) 
		
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after second class advancement!")
		UseItemFailed ( role )	
	end
end
-------------------------------------------------------- --[[���ӹ�ʽ]]--
function ItemUse_ZhongZi ( role , Item ) 
	local hp = GetChaAttr(role, ATTR_HP)  
	if hp <= 0 then   
	end 
	hp_resume = 1000   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������hpʱ����Ϊ���hp
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 
------------------------------------------------------------ --[[�ۻƾƹ�ʽ]]--
function ItemUse_XiongHJ ( role , Item ) 
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSFYS , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end 
---------------------------------------------------------- --[[���ݹ�ʽ]]--
function ItemUse_AiCao ( role , Item )  
	local statelv = 1
	local statetime = 180
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSBYS , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end 



------------------------------------------- ���ױ���
function ItemUse_FLeiBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local BNUM = B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15
	if Item_CanGet < BNUM then
		SystemNotice(role ,"To open a Tempest Chest requires"..BNUM.."space ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , A1 , B1 , 4 )
	GiveItem ( role , 0 , A2 , B2 , 4 )
	GiveItem ( role , 0 , A3 , B3 , 4 )
	GiveItem ( role , 0 , A4 , B4 , 4 )
	GiveItem ( role , 0 , A5 , B5 , 4 )
	GiveItem ( role , 0 , A6 , B6 , 4 )
	GiveItem ( role , 0 , A7 , B7 , 4 )
	GiveItem ( role , 0 , A8 , B8 , 4 )
	GiveItem ( role , 0 , A9 , B9 , 4 )
	GiveItem ( role , 0 , A10 , B10 , 4 )
	GiveItem ( role , 0 , A11 , B11 , 4 )
	GiveItem ( role , 0 , A12 , B12 , 4 )
	GiveItem ( role , 0 , A13 , B13 , 4 )
	GiveItem ( role , 0 , A14 , B14 , 4 )
	GiveItem ( role , 0 , A15 , B15 , 4 )
	GiveItem ( role , 0 , A16 , B16 , 4 )
	GiveItem ( role , 0 , A17 , B17 , 4 )
	GiveItem ( role , 0 , A18 , B18 , 4 )
	GiveItem ( role , 0 , A19 , B19 , 4 )
	GiveItem ( role , 0 , A20 , B20 , 4 )
	GiveItem ( role , 0 , A21 , B21 , 4 )
	GiveItem ( role , 0 , A22 , B22 , 4 )
	GiveItem ( role , 0 , A23 , B23 , 4 )
	GiveItem ( role , 0 , A24 , B24 , 4 )
end
	 
----------------------------------------------�������ﱦ��
function ItemUse_CJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"To open a Chest requires 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , C1  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	local Item_newJLID = GetItemID ( Item_newJL )			--ȡ�¾������ָ��


	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )       --����
	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )       --����
	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )       --רע
	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )       --����
	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )       --����

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )	--Get Num Part 1 �� Part 7
	local Part2_JL = GetNum_Part2 ( Num_JL )	
	local Part3_JL = GetNum_Part3 ( Num_JL )
	local Part4_JL = GetNum_Part4 ( Num_JL )
	local Part5_JL = GetNum_Part5 ( Num_JL )
	local Part6_JL = GetNum_Part6 ( Num_JL )
	local Part7_JL = GetNum_Part7 ( Num_JL )
	if Item_newJLID==231 or Item_newJLID==232 or Item_newJLID==233 or Item_newJLID==234 or Item_newJLID==235  or Item_newJLID==236  or Item_newJLID==237  or Item_newJLID==681 then
		Part1_JL=1
		Num_JL = SetNum_Part1 ( Num_JL , 1 ) ----------��ת���
		SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	end
	str_JLone	= N1
	con_JLone = N2
	agi_JLone	= N3
	dex_JLone = N4
	sta_JLone	= N5
	local new_lv=N1+N2+N3+N4+N5
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone)
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone)
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
	local cha_name = GetChaDefaultName ( role )
	--LG( "star_JLZS_lg" ,cha_name,Item_JLone_ID , lv_JLone , str_JLone , con_JLone , agi_JLone , dex_JLone , sta_JLone , Item_JLother_ID , lv_JLother  , str_JLother , con_JLother , agi_JLother , dex_JLother , sta_JLother )
	LG( "star_CJBOX" ,cha_name, C1 , N1 , N2 ,  N3 , N4 , N5 )

end

----------------------------------------------���߱���
function ItemUse_YZheBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 8 then
		SystemNotice(role ,"To open a Champion's Chest requires 8 empty slots")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 453 , 1 , 4 )
	GiveItem ( role , 0 , 454 , 1 , 4 )
	GiveItem ( role , 0 , 455 , 1 , 4 )
	GiveItem ( role , 0 , 456 , 1 , 4 )
	local rad = math.random ( 1, 8 )
	if rad == 1 then
	GiveItem ( role , 0 , 5013  , 1 , 4 ) 
	GiveItem ( role , 0 , 5021  , 1 , 4 ) 
	GiveItem ( role , 0 , 5029  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5014  , 1 , 4 ) 
	GiveItem ( role , 0 , 5022  , 1 , 4 ) 
	GiveItem ( role , 0 , 5030  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5015  , 1 , 4 ) 
	GiveItem ( role , 0 , 5023  , 1 , 4 ) 
	GiveItem ( role , 0 , 5031  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5016  , 1 , 4 ) 
	GiveItem ( role , 0 , 5024  , 1 , 4 ) 
	GiveItem ( role , 0 , 5032  , 1 , 4 ) 
	GiveItem ( role , 0 , 5037  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5017  , 1 , 4 ) 
	GiveItem ( role , 0 , 5025  , 1 , 4 ) 
	GiveItem ( role , 0 , 5033  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5018  , 1 , 4 ) 
	GiveItem ( role , 0 , 5026  , 1 , 4 ) 
	GiveItem ( role , 0 , 5034  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5019  , 1 , 4 ) 
	GiveItem ( role , 0 , 5027  , 1 , 4 ) 
	GiveItem ( role , 0 , 5035  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5020  , 1 , 4 ) 
	GiveItem ( role , 0 , 5028  , 1 , 4 ) 
	GiveItem ( role , 0 , 5036  , 1 , 4 )
	GiveItem ( role , 0 , 5038  , 1 , 4 )
	end
end

--ID3094	��������� ����������
function ItemUse_MoreExpGzA( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� ��������� ����������" )
end

--ID3095	����� ��������� ����������
function ItemUse_MoreExpGzLv3A( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"����� ��������� ���������� ����� ������������ ������ ������ ���� 60 ������.")
		UseItemFailed ( role )
		return
	end

	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� ����� ��������� ����������" )
end

--ID5694	3,5�-��������� ����������
function ItemUse_MoreExpGzLv3x5A( role , Item )
	local Lv = Lv( role )
	if Lv < 80 then
		SystemNotice(role ,"3,5�-��������� ���������� ����� ������������ ������ ������ ���� 80 ������.")
		UseItemFailed ( role )
		return
	end

	local statelv = 5

	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� 3,5�-��������� ����������" )
end

--ID5695	4�-��������� ����������
function ItemUse_MoreExpGzLv4A( role , Item )
	local Lv = Lv( role )
	if Lv < 90 then
		SystemNotice(role ,"4�-��������� ���������� ����� ������������ ������ ������ ���� 80 ������.")
		UseItemFailed ( role )
		return
	end

	local statelv = 6

	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� 4�-��������� ����������" )
end

--ID3096	��������� �����
function ItemUse_MoreItemGzA( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� ��������� �����" )
end

--ID3097	������� ��������� �����
function ItemUse_MoreItemGzLv3A( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"������� ��������� ����� ����� ������������ ������ ������ ���� 60 ������.")
		UseItemFailed ( role )
		return
	end

	local statelv = 3

	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )

	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	SystemNotice ( role ,"���������� ������ �� �������� ��������� �����" )
end

-------------------------------------ǿ�������ָ���
function ItemUse_TLHFJA( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	hp_resume = 1000 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then --�ӳ������spʱ����Ϊ���sp
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
end
------------------------------------SP����ˮ
function ItemUse_TMLGZA( role , Item ) 
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 150 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then --�ӳ������spʱ����Ϊ���sp
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 
---------------------------------------------��ʨģ��ҩ��( str )
function ItemUse_SPXsyjA( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSJSQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"����� ������ ����� � ���������������, ������������ �� �����!")
		UseItemFailed ( role )
		return
	end	

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSLLQH , statelv , statetime )

end
-----------------------------------------------���ģ��ҩ��( agi )
function ItemUse_SPLhyjA( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSLQQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"����� ������ ����� � ���������������, ������������ �� �����!")
		UseItemFailed ( role )
		return
	end
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSMJQH , statelv , statetime )

end

------------------------------------------------ӥ��ģ��ҩ��( dex )
function ItemUse_SPYyyjA( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"����� ������ ����� � ���������������, ������������ �� �����!")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSLQQH , statelv , statetime )

end

-----------------------------------------------------��ţģ��ҩ��( con )
function ItemUse_SPMnyjA( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end



	if OtherStateLv > 0 then
		SystemNotice(role ,"����� ������ ����� � ���������������, ������������ �� �����!")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSTZQH , statelv , statetime )

end

------------------------------------------------ʥ��ģ��ҩ��( sta )
function ItemUse_SPSlyjA( role , Item )
	
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end


	if OtherStateLv > 0 then
		SystemNotice(role ,"����� ������ ����� � ���������������, ������������ �� �����!")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSJSQH , statelv , statetime )

end

--------------------------------�����󻬼�

function ItemUse_MspdYSA ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_YSMspd , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end

end
--------------------------------��װҩˮ �����������ٶ�С�����ͷ����ĵ��߳���ʱ��15����
function ItemUse_MspdYSB ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_QINGZ , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end
-------------------------------------ս��װ��
function ItemUse_GJZhuangJiaA ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatDEF , statelv , statetime )
	else
		SystemNotice( role , "������������� �������� ������ �� ����� ��������. " )
		UseItemFailed ( role )
		return
	end

end
-----------------------------------Ԫ��������
function ItemUse_DenglongA ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_DENGLONG , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end
-----------------------------------ȫ��װ�� �����߷�����С�����͹������ĵ��߳���ʱ��15����
function ItemUse_DenglongB ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		Rem_State_StarUnnormal ( role )
		AddState( role , role , STATE_QUANS , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

--��������Ʊ

function Jz_Script_ltcsA(role, Item )
	local i = CheckBagItem(role,3048)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3048,1)
			if j == 1 then
				MoveCity(role,"Thundoria Castle")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end



--���������ۻ�Ʊ
function Jz_Script_ltjgcsA(role, Item )
	local i = CheckBagItem(role,3049)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3049,1)
			if j == 1 then
				MoveCity(role,"Thundoria Harbor")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end


--ʥѩɽ��Ʊ

function Jz_Script_sxscsA(role, Item )

	local i = CheckBagItem(role,3050)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3050,1)
			if j == 1 then
				MoveCity(role,"Sacred Snow Mountain")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--����ɭ�ֲ���վ��Ʊ

function Jz_Script_laslcsA(role, Item )
	local i = CheckBagItem(role,3051)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3051,1)
			if j == 1 then
				MoveCity(role,"Andes Forest Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--ɳȪ����վ��Ʊ
function Jz_Script_sqcsA(role, Item )
	local i = CheckBagItem(role,3052)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3052,1)
			if j == 1 then
				MoveCity(role,"Oasis Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--��������վ��Ʊ

function Jz_Script_bjcsA(role, Item )
	local i = CheckBagItem(role,3053)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3053,1)
			if j == 1 then
				MoveCity(role,"Icespire Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--��į֮����ڻ�Ʊ

function Jz_Script_jmztcsA(role, Item )
	local i = CheckBagItem(role,3054)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3054,1)
			if j == 1 then
				MoveCity(role,"Lone Tower Entrace")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--ɳ����ڻ�Ʊ
function Jz_Script_scrkcsA(role, Item )
	local i = CheckBagItem(role,3055)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3055,1)
			if j == 1 then
				MoveCity(role,"Barren Cavern Entrance")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--�Ͽ�2���Ʊ

function Jz_Script_fk2csA(role, Item )
	local i = CheckBagItem(role,3056)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3056,1)
			if j == 1 then
				MoveCity(role,"Abandon Mine 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--����2���Ʊ

function Jz_Script_yk2csA(role, Item )
	local i = CheckBagItem(role,3057)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3057,1)
			if j == 1 then
				MoveCity(role,"Silver Mine 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--����3���Ʊ

function Jz_Script_yk3csA(role, Item )
	local i = CheckBagItem(role,3058)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3058,1)
			if j == 1 then
				MoveCity(role,"Silver Mine 3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--��į֮��2��Ʊ

function Jz_Script_jmzt2csA(role, Item )
	local i = CheckBagItem(role,3059)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3059,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--��į֮��3��Ʊ

function Jz_Script_jmzt3csA(role, Item )
	local i = CheckBagItem(role,3060)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3060,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--��į֮��4��Ʊ
function Jz_Script_jmzt4csA(role, Item )
	local i = CheckBagItem(role,3070)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3070,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 4")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--��į֮��5��Ʊ

function Jz_Script_jmzt5csA(role, Item )
	local i = CheckBagItem(role,3071)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3071,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 5")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--��į֮��6��Ʊ
function Jz_Script_jmzt6csA(role, Item )
	local i = CheckBagItem(role,3072)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3072,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 6")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--�Ͽ�1���Ʊ

function Jz_Script_fk1csA(role, Item )
	local i = CheckBagItem(role,3073)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3073,1)
			if j == 1 then
				MoveCity(role,"Abandon Mine 1")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
----�������;���-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_cfzsA(role, Item )
	local i = CheckBagItem(role,3076)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3076,1)
			if j == 1 then
				MoveCity(role,"Spring Town")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
---------------��������ʹ��-------------------
function ItemUse_CiChang( role, Item )
	local Elf_URE = GetItemAttr(Item,ITEMATTR_URE) --��ǰ�;ü�¼ʣ���ӡ����
	local Elf_EXP = GetItemAttr(Item,ITEMATTR_ENERGY) --���������¼�������
	if Elf_URE ~= 0 then
		SystemNotice(role ,"Seal has not been broken")
		UseItemFailed ( role )
		return
	end
	if Elf_EXP >9 then
		SystemNotice(role ,"Cursed points higher than 9. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use item")
		UseItemFailed ( role )
		return
	end
	local sta = GetItemAttr( Item ,ITEMATTR_VAL_STA )       --����
	if sta == 0 then
		SystemNotice(role ,"Not yet put in target item, use item failed.")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	if sta == 1 then ---����һ866����֮��----------������֮��
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 845  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 845  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 845  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 845  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 845  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 845  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 845  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 845  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 845  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 845  , 1 , 12  )  		
		end
		local message ="Black Dragon Altar has been unsealed! ".. cha_name.." obtains Black Dragon Torso!"  
		Notice ( message )
		LG("HeiLongJiTan","Character name as",cha_name,"'s Cursed points is now",Elf_EXP," Under this situation, you open the Black Dragon Altar and obtain Black Dragon Torso")
	end
	if sta == 2 then ---���Ķ�865����֮��---------------������֮��
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 847  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 847  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 847  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 847  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 847  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 847  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 847  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 847  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 847  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 847  , 1 , 2  )  		
		end
		local message ="Black Dragon Altar has been unsealed! ".. cha_name.."obtained Black Dragon Wings!"  
		Notice ( message )
		LG("HeiLongJiTan","Character name as",cha_name,"'s Cursed points is now",Elf_EXP,"Under this situation, you opened Black Dragon Altar and obtain Black Dragon Wings")
	end
	if sta == 3 then ---������864����֮ͫ---------------������֮צ
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 846  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 846  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 846  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 846  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 846  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 846  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 846  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 846  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 846  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 846  , 1 , 2  )  		
		end
		local message ="Black Dragon Altar has been unsealed! ".. cha_name.." obtains Black Dragon Claw!"  
		Notice ( message )
		LG("HeiLongJiTan","Character name as",cha_name,"'s Cursed points is now",Elf_EXP,"Under this situation, you open Black Dragon Altar and obtain Black Dragon Claw")
	end
	if sta == 4 then ---������������֮��
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 848  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 848  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 848  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 848  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 848  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 848  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 848  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 848  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 848  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 848  , 1 , 2  )  		
		end
		local message ="Black Dragon Altar has been unsealed! ".. cha_name.." obtains Black Dragon Helm!"  
		Notice ( message )
		LG("HeiLongJiTan","Character name as",cha_name,"'s Cursed points is now",Elf_EXP,"Under this situation, you open the Black Dragon Altar and obtain Black Dragon Helm")
	end
	if Elf_EXP ~=0 then
		SystemNotice(role ,"Remaining Cursed points has damage the quality of Black Dragon equipment")
	end
end
---------------����ʹ��-----------------------sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       --����
function ItemUse_hexin ( role , Item , Item_Traget ) 
	local Item_Traget_ID = GetItemID ( Item_Traget )
	local Item_ID = GetItemID ( Item )		
	local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       --����
	if Item_Traget_ID ~= 266 then
		SystemNotice(role ,"Please place the sacrificial item on the altar")
		UseItemFailed ( role )
		return
	end
	if sta==1 and Item_ID == 866 then
		SystemNotice(role ,"You have used a Heart of Black Dragon as a sacrificial item")
		UseItemFailed ( role )
		return	
	end
	if sta==2 and Item_ID == 865 then
		SystemNotice(role ,"You have used Soul of Black Dragon as a sacrificial item")
		UseItemFailed ( role )
		return	
	end
	if sta==3 and Item_ID == 864 then
		SystemNotice(role ,"You have used Eye of Black Dragon as a sacrificial item")
		UseItemFailed ( role )
		return	
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local cha_name = GetChaDefaultName ( role ) 
		if Item_type == 49 and Item_Traget_Type == 65 then
				if Item_ID == 866 then						---����A
				sta =1
				SystemNotice( role , "Use Heart of Black Dragon as a sacrificial item and obtain Black Dragon Torso" )
				LG("HeiLongJiTan_HeXin","Character name as",cha_name,"player used Heart of Black Dragon as sacrificial item")
				elseif Item_ID == 865 then						---����B
				sta =2
				SystemNotice( role , "Use Soul of Black Dragon as a sacrificial item and obtain Black Dragon Wings" )
				LG("HeiLongJiTan_HeXin","Character name as",cha_name,"player used Soul of Black Dragon as a sacrificial item")
				elseif Item_ID == 864 then						---����C
				sta =3
				SystemNotice( role , "Use Eye of Black Dragon as a sacrificial item to obtain Black Dragon Claw" )
				LG("HeiLongJiTan_HeXin","Character name as",cha_name,"player used Eye of Black Dragon as a sacrificial item")
				elseif Item_ID == 275 then						---����D
				sta =4
				else 
						UseItemFailed ( role )
						return
				end
				SetItemAttr( Item_Traget ,ITEMATTR_VAL_STA ,sta )
		end 
end
---------------��֮��ʹ��--------------------------str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       --����
function ItemUse_HZLi ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Please place the Power of Flame on the altar")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65  then
				local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       --����
				if str >= 5 then
					UseItemFailed ( role )
				return
				end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --��ǰ�;ü�¼ʣ���ӡ����
					str = str + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_STR ,str )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --���������¼�������
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --���������¼�������
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "Unfortunately, the Altar has been cursed by the soul of the black dragon" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end


---------------��֮��ʹ��-------------------------con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       --����

function ItemUse_BZLi ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Place Power of Frost on the altar")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       --����
				if con >= 5 then
					UseItemFailed ( role )
				return
				end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --��ǰ�;ü�¼ʣ���ӡ����
					con = con + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_CON ,con )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --���������¼�������
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --���������¼�������
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "Unfortunately, the Altar has been cursed by the soul of the black dragon" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end
----------------��֮��ʹ��---------------------------agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       --����
function ItemUse_FZLi( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Please place the Power of Wind on the altar")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       --����
					if agi >= 5 then
					UseItemFailed ( role )
					return
					end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --��ǰ�;ü�¼ʣ���ӡ����
					agi = agi + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI ,agi )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --���������¼�������
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --���������¼�������
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "Unfortunately, the Altar has been cursed by the soul of the black dragon" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end

----------------��֮��ʹ��---------------------------dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       --רע
function ItemUse_LZli ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Please place Power of Thunder on the altar")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       --����
					if dex >= 5 then
					UseItemFailed ( role )
					return
					end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) --��ǰ�;ü�¼ʣ���ӡ����
					dex = dex + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX ,dex )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --���������¼�������
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --���������¼�������
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "Unfortunately, the Altar has been cursed by the soul of the black dragon" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end
----------------��ʹ����ʹ��-------------------------
function ItemUse_ZhuFu ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Please confirm to use Angelic Dice")
		UseItemFailed ( role )
		return
	end
	local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) --��ǰ������¼�������
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) --���������¼�������

	if Elf_EXP ==0 then
		UseItemFailed ( role )
		
		return
	end
	local rad = math.random ( 1, 100 )

	if Elf_EXP <= 5 and Elf_EXP >= 1 then
		if rad <= 30 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"The angelic dice you used was of bad quality, the curse was not lifted.")
		end
	end

	if Elf_EXP <= 10 and Elf_EXP >= 6 then
		if rad <= 50 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"The angelic dice you used was of bad quality, the curse was not lifted.")
		end
	end

	if Elf_EXP <= 15 and Elf_EXP >= 11 then
		if rad <= 80 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"The angelic dice you used was of bad quality, the curse was not lifted.")
		end
	end

	if Elf_EXP >= 16  then
		Elf_EXP = Elf_EXP -1
	end

	SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
	SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_EXP )
end

--ID1094	������� � ������� ��������
function ItemUse_YiYuanHaoYunBOX ( role , Item )
	local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
				 AddMoney ( role , 0 , 50000 )
			else	
				local item_type = BoxXiang_YiYuanBOX
				local item_type_rad = BoxXiang_YiYuanBOX_Rad 
				local item_type_count = BoxXiang_YiYuanBOX_Count 
				local maxitem = BoxXiang_YiYuanBOX_Mxcount
				local item_quality = BoxXiang_YiYuanBOX_Qua
				local General = 0  
				local ItemId = 0 
			--	local Item_CanGet = GetChaFreeBagGridNum ( role )
				
			--	if Item_CanGet <= 1 then
			--		SystemNotice(role ,"Insufficient space in inventory. Unable to use Prosperous Packet")
			--		UseItemFailed ( role )
			--		return
			--	end
				for i = 1 , maxitem , 1 do 
					General = item_type_rad [ i ] + General
				end 
				local a = math.random ( 1, General )
				local b = 0
				local d = 0 
				local c = -1
				for k = 1 , maxitem , 1 do

					d = item_type_rad [ k ] + b

					 if a <= d and a > b then
						c = k
						break		
					end 
					b = d 
				end 
				if c == -1 then 
					ItemId = 3124 
				else 
					ItemId = item_type [c]  
					ItemCount = item_type_count [c] 
				end 

				GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
		
				local GoodItem = {}
				GoodItem[0] = 3336
				GoodItem[1] = 3885
				GoodItem[2] = 430
				GoodItem[3] = 3886
				GoodItem[4] = 3113
				GoodItem[5] = 3111
				GoodItem[6] = 3093
				GoodItem[7] = 3090
				GoodItem[8] =0860
				GoodItem[9] =0861
				GoodItem[10] =0862
				GoodItem[11] =0863
				GoodItem[12] =179
				GoodItem[13] =3084
				GoodItem[14] =3085


				local Good_C = 0
				for Good_C = 0 , 14 , 1 do
					if ItemId == GoodItem[Good_C] then
						local itemname = GetItemName ( ItemId ) 
						local cha_name = GetChaDefaultName ( role ) 
						local message = cha_name.." opens a Lucky Packet and obtain"..itemname  
						Notice ( message )
					end
				end
			end 
	end

---------------�صȽ�
function ItemUse_tedengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"������������ ����� � ���������")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 845  , 1 , 16  )  
	GiveItem ( role , 0 , 846  , 1 , 16  )  
	GiveItem ( role , 0 , 847  , 1 , 16  ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens the Grand Prize and obtain Black Dragon set"
		Notice ( message )
end


-----------------------һ�Ƚ�
function ItemUse_yidengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"������������ ����� � ���������")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0853  , 1 , 4 ) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens the First Prize and obtain a Happy Holiday Magazine" 
		Notice ( message )
end

---------------------------���Ƚ�
function ItemUse_erdengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 14 then
		SystemNotice(role ,"������������ ����� � ���������")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0456  , 10 , 4  ) 
	local rad = math.random ( 1, 8 )
	if rad == 1 then
	GiveItem ( role , 0 , 5013  , 1 , 4 ) 
	GiveItem ( role , 0 , 5021  , 1 , 4 ) 
	GiveItem ( role , 0 , 5029  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5014  , 1 , 4 ) 
	GiveItem ( role , 0 , 5022  , 1 , 4 ) 
	GiveItem ( role , 0 , 5030  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5015  , 1 , 4 ) 
	GiveItem ( role , 0 , 5023  , 1 , 4 ) 
	GiveItem ( role , 0 , 5031  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5020  , 1 , 4 ) 
	GiveItem ( role , 0 , 5024  , 1 , 4 ) 
	GiveItem ( role , 0 , 5032  , 1 , 4 ) 
	GiveItem ( role , 0 , 5037  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5017  , 1 , 4 ) 
	GiveItem ( role , 0 , 5025  , 1 , 4 ) 
	GiveItem ( role , 0 , 5033  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5018  , 1 , 4 ) 
	GiveItem ( role , 0 , 5026  , 1 , 4 ) 
	GiveItem ( role , 0 , 5034  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5019  , 1 , 4 ) 
	GiveItem ( role , 0 , 5027  , 1 , 4 ) 
	GiveItem ( role , 0 , 5035  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5016  , 1 , 4 ) 
	GiveItem ( role , 0 , 5028  , 1 , 4 ) 
	GiveItem ( role , 0 , 5036  , 1 , 4 )
	GiveItem ( role , 0 , 5038  , 1 , 4 )
	end
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens the Second Prize and obtain 10 Strengthening Crystal and 1 set of Apparel"   
		Notice ( message )
end

	
--------------------------���Ƚ�
function ItemUse_sandengjiang ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"������������ ����� � ���������")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad == 1 then
		GiveItem ( role , 0 , 3094  , 1 , 4 ) 
		GiveItem ( role , 0 , 3096  , 1 , 4 )
	else
		GiveItem ( role , 0 , 1094  , 1 , 4 ) 
	end
end

--ID1095	������� 99
function ItemUse_BaoZhaBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	--if Item_CanGet <= 1 then
		--SystemNotice(role ,"Insufficient space in inventory. Unable to use Prosperous Packet")
		--UseItemFailed ( role )
		--return
	--end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 

	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." opens a 99 Parcel and obtain "..itemname  
			Notice ( message )
		end
	end
end

-------------------------------------���������ֻ���
function ItemUse_wxlh( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"To open a Chest requires 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , SI  , SN , SE )
	local Item_star = GetChaItem ( role , 2 , r2 )			--ȡ����ָ��
	local num={}
	local numAttr={}
	local b = 0
	local a = {}
	for b=1,5,1 do
		num [b]=0
		numAttr [b]=0
	end
	b = 0
	for i=1,47,1 do		---------------ȡ�����ߵ�ȫ��ʵ��������
		a [i]=GetItemAttr ( Item_star , i )
		if a [i]~=0 then
	--		SystemNotice( role , a [i] )
				b = b + 1
				num [b]=i    -------------num [b]��¼ʵ�������Եı��
				numAttr [b]=a[i] ------------���еĸ�ʵ��������ֵ
		end
	end
	SetItemAttr ( Item_star ,num [1] , SA1 )
	SetItemAttr ( Item_star ,num [2] , SA2 )
	SetItemAttr ( Item_star ,num [3] , SA3 )
	SetItemAttr ( Item_star ,num [4] , SA4)
	SetItemAttr ( Item_star ,num [5] , SA5)

end
----------------------------------�߼���ָ�һ�
function ItemUse_Sjz( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"Inventory requires at least 5 empty slots to use Unique Ring Voucher")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 5 )
	if rad ==1 then
	--�����ļ��
	--�������
	--������ӡ
	--��֮��
	--���صĺ���
	GiveItem ( role , 0 , 281  , 1 , 4 )	
	GiveItem ( role , 0 , 286  , 1 , 4 )	
	GiveItem ( role , 0 , 324  , 1 , 4 )	
	GiveItem ( role , 0 , 334  , 1 , 4 )	
	GiveItem ( role , 0 , 387  , 1 , 4 )	
	end
	if rad ==2 then
	--�����Ŀ�̽
	--����֮��
	--���ǻ���
	--����֮��
	--��ά��֮��
	GiveItem ( role , 0 , 282  , 1 , 4 )	
	GiveItem ( role , 0 , 287  , 1 , 4 )	
	GiveItem ( role , 0 , 327  , 1 , 4 )	
	GiveItem ( role , 0 , 346  , 1 , 4 )	
	GiveItem ( role , 0 , 414  , 1 , 4 )		
	end
	if rad ==3 then
	--����֮��
	--���������
	--����ָ��
	--��֮��
	--��ŷ�ķ�ŭ
	GiveItem ( role , 0 , 283  , 1 , 4 )	
	GiveItem ( role , 0 , 288  , 1 , 4 )	
	GiveItem ( role , 0 , 328  , 1 , 4 )	
	GiveItem ( role , 0 , 347  , 1 , 4 )	
	GiveItem ( role , 0 , 415  , 1 , 4 )	
	end
	if rad ==4 then
	--��ͽ֮��
	--����ɮ
	--�����޵�ף��
	--����
	--Сɽ����Ǹ��
	GiveItem ( role , 0 , 284  , 1 , 4 )	
	GiveItem ( role , 0 , 524  , 1 , 4 )	
	GiveItem ( role , 0 , 329  , 1 , 4 )	
	GiveItem ( role , 0 , 348  , 1 , 4 )	
	GiveItem ( role , 0 , 416  , 1 , 4 )		
	end
	if rad ==5 then
	--�黷
	--ʥ��
	--��ʹ�ı���
	--����
	--ʥŮ�ķ���
	GiveItem ( role , 0 , 285  , 1 , 4 )	
	GiveItem ( role , 0 , 321  , 1 , 4 )	
	GiveItem ( role , 0 , 330  , 1 , 4 )	
	GiveItem ( role , 0 , 349  , 1 , 4 )	
	GiveItem ( role , 0 , 417  , 1 , 4 )			
	end
end
----------------------------------�߼������һ�
function ItemUse_Sxl( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"Inventory requires at least 5 empty slots to use Unique Necklace Voucher")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad ==1 then
	--̫��ʯ׹��
	--��ҫʯ������
	--ͻ��
	--�첽ð����
	--����������
	GiveItem ( role , 0 , 418  , 1 , 4 )	
	GiveItem ( role , 0 , 420  , 1 , 4 )	
	GiveItem ( role , 0 , 739  , 1 , 4 )	
	GiveItem ( role , 0 , 462  , 1 , 4 )	
	GiveItem ( role , 0 , 495  , 1 , 4 )		
	end
	if rad ==2 then
	--�׽�����
	--��֮��ʹ
	--��������
	--�Թ�̽����
	--���ӵĴ���
	GiveItem ( role , 0 , 419  , 1 , 4 )	
	GiveItem ( role , 0 , 421  , 1 , 4 )	
	GiveItem ( role , 0 , 461  , 1 , 4 )	
	GiveItem ( role , 0 , 463  , 1 , 4 )	
	GiveItem ( role , 0 , 497  , 1 , 4 )		
	end
end
----------------------------------�߼����Ƕһ�
function ItemUse_Sbk( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"Inventory requires at least 5 empty slots to use Unique Coral Voucher")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad ==1 then
	--ѧͽ���ױ�
	--ͨ�����ױ�
	--�м���֮��
	--�߼���֮��
	--����2006
	GiveItem ( role , 0 , 498  , 1 , 4 )	
	GiveItem ( role , 0 , 503  , 1 , 4 )	
	GiveItem ( role , 0 , 504  , 1 , 4 )	
	GiveItem ( role , 0 , 505  , 1 , 4 )	
	GiveItem ( role , 0 , 506  , 1 , 4 )		
	end
	if rad ==2 then
	--ѧͽ�÷籴  
	--ͨ���ͷ籴  
	--�м���֮��  
	--�߼���֮��  
	--����2006 
	GiveItem ( role , 0 , 508  , 1 , 4 )	
	GiveItem ( role , 0 , 509  , 1 , 4 )	
	GiveItem ( role , 0 , 510  , 1 , 4 )	
	GiveItem ( role , 0 , 522  , 1 , 4 )	
	GiveItem ( role , 0 , 523  , 1 , 4 )		
	end
end
----�ĵ��ɻ�Ʊ-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_xdfjp(role, Item )
	local i = CheckBagItem(role,563)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,563,1)
			if j == 1 then
				MoveCity(role,"Summer Island")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

----�ﵺ�ɻ�Ʊ-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_qdfjp(role, Item )
	local i = CheckBagItem(role,583)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,583,1)
			if j == 1 then
				MoveCity(role,"Autumn Island")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
----���˰�����-------------------------------------------------------------------------------------------------------------------------------------
function ItemUse_Crbbt(role, Item )
--	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
	local statelv = 1
	local statetime = 20
	AddState( role , role , STATE_CJBBT , statelv , statetime )
end
----�����ɿ���-------------------------------------------------------------------------------------------------------------------------------------
function ItemUse_Jrqkl(role, Item )
--	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
	local statelv = 1
	local statetime = 20
	AddState( role , role , STATE_JRQKL , statelv , statetime )
end
--��������
function ItemUse_ZhouSuiBOX ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 2 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open Birthday Package")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1097 , 1 , 0 )
	local item_type = BoxXiang_ZhousSuiBOX
	local item_type_rad = BoxXiang_ZhousSuiBOX_Rad 
	local item_type_count = BoxXiang_ZhousSuiBOX_Count 
	local maxitem = BoxXiang_ZhouSui_Mxcount
	local item_quality = BoxXiang_ZhouSui_Qua
	local General = 0  
	local ItemId = 0 
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	if ItemId ==  0853 then
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens Anniversary Chest and obtain Happy Holiday Magazine" 
	Notice ( message )
	end
end
-------------------------------�����ItemUse_CZHe
function ItemUse_CZHe( role , Item ) 							
 	local Money_add = 1000000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have>=999900000 then
		SystemNotice (role, "Your account is saturated. Unable to use item")
		UseItemFailed ( role )
		return	
	end
	AddMoney ( role , 0 , Money_add )
end 
-----------------------------------Ħ��С�Ӿ��鵰ItemUse_MDXZJLD
function ItemUse_MDXZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use pet egg")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 680  , 1 , 4 ) 
end
----���ձȹ۹�Ʊ-------------------------------------------------------------------------------------------------------------------------------------
function Jz_Script_jialebi(role, Item )
	local i = CheckBagItem(role,2445)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2445,1)
			if j == 1 then
				MoveCity(role,"Caribbean")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
----------------------------------��֮���鵰
function ItemUse_YZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Luck")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 231  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------��֮���鵰
function ItemUse_TZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Constitution")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 233  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------��֮���鵰
function ItemUse_LZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Strength")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 232  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------��֮���鵰
function ItemUse_SZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Spirit")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 234  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------ר֮���鵰
function ItemUse_ZZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Accuracy")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 235  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------��֮���鵰
function ItemUse_MZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Agility")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 236  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
----------------------------------а֮���鵰
function ItemUse_XZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Evil")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 237  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end
-----------Ħ��С�Ӷ������鵰
function ItemUse_MDXZESJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Mordo")
		UseItemFailed ( role )
		return
	end
	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  
	GiveItem ( role , 0 , 609  , 1 , 4 ) 
	local r1,r2 =MakeItem ( role , 681  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

--ID0239	��������� �������� ����
function Sk_Script_CJJLFT( role , Item )
 	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a == 0 then 
		UseItemFailed ( role )  
		return 
	end
end

--ID0608	����������� �������� ����
function Sk_Script_ZJJLFT ( role , Item )
	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 2 then 
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 2 , 1 , 0 )
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end
end 

--ID0609	����������� �������� ����
function Sk_Script_GJJLFT( role , Item )
 	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 3  then 
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 3 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--ID0276	�������� ����� �������� �������
function ItemUse_CJ_longguo( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� �������� ����� �������� �������(���� +2)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Str_1 ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0277	�������� ������� �����
function ItemUse_CJ_koumei ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� �������� ������� ������(�������� +2)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Agi_1 ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0278	�������� ������� � ������
function ItemUse_CJ_yusi ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� �������� ��������� � ������(�������� +2)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Dex_1 ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0279	�������� ���������� �����
function ItemUse_CJ_guopu ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� �������� ���������� �����(������������ +2)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Con_1 ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0280	�������� ���������� �������
function ItemUse_CJ_mibing ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� �������� ���������� ���������(��� +2)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Sta_1 ( role , Item_Num , Item_Traget )
				end
		end 
end


--ID7003	���������� ����� ����
function ItemUse_Great_Strup( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv1( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ���������� ������� ����!" ) 
					UseItemFailed ( role )
				else
					Lvup_Str ( role , Item_Num , Item_Traget )
				end
		end 
end

--ID7004	���������� ����� ��������
function ItemUse_Great_Agiup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv1( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ���������� ������� ��������!" ) 
					UseItemFailed ( role )
				else
					Lvup_Agi ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID7005	���������� ����� ��������
function ItemUse_Great_Dexup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv1( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ���������� ������� ��������!" ) 
					UseItemFailed ( role )
				else
					Lvup_Dex ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID7006	���������� ����� ������������
function ItemUse_Great_Conup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv1( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ���������� ������� ������������!" ) 
					UseItemFailed ( role )
				else
					Lvup_Con ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID7007	���������� ����� ����
function ItemUse_Great_Staup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv1( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ���������� ������� ����!" ) 
					UseItemFailed ( role )
				else
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end
		end 
end


--ID7008	����� ����� ����
function ItemUse_Super_Strup( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv2( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				if Item_bg ~= Item_Traget then
					SystemNotice(role , "��� ������ ��������� �� 2 ����� ������� ����, ��� �� ��������� �� ����� ������� ����!" ) 
					UseItemFailed ( role )
				else
					Lvup_Str ( role , Item_Num , Item_Traget )
				end
		end 
end

--ID7009	����� ����� ��������
function ItemUse_Super_Agiup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv2( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				if Item_bg ~= Item_Traget then
					SystemNotice(role , "��� ������ ��������� �� 2 ����� ������� ����, ��� �� ��������� �� ����� ������� ��������!" ) 
					UseItemFailed ( role )
				else
					Lvup_Agi ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID7010	����� ����� ��������
function ItemUse_Super_Dexup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv2( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				if Item_bg ~= Item_Traget then
					SystemNotice(role , "��� ������ ��������� �� 2 ����� ������� ����, ��� �� ��������� �� ����� ������� ��������!" ) 
					UseItemFailed ( role )
				else
					Lvup_Dex ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID7011	����� ������������
function ItemUse_Super_Conup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv2( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				if Item_bg ~= Item_Traget then
					SystemNotice(role , "��� ������ ��������� �� 2 ����� ������� ����, ��� �� ��������� �� ����� ������� ������������!" ) 
					UseItemFailed ( role )
				else
					Lvup_Con ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID7012	����� ����� ����
function ItemUse_Super_Staup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv2( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				if Item_bg ~= Item_Traget then
					SystemNotice(role , "��� ������ ��������� �� 2 ����� ������� ����, ��� �� ��������� �� ����� ������� ����!" ) 
					UseItemFailed ( role )
				else
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end
		end 
end


--ID0578	����� �����
function ItemUse_JLJSGz( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_JLJSGZ)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_JLJSGZ , statelv , statetime )
end
---------------------70����ӡ���䱦��
function ItemUse_70FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Seal Master Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4204  , 1 , 22) 
end
---------------------70���޽����䱦��
function ItemUse_70JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Champion Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1375 , 1 , 22) 
end
---------------------70��˫�����䱦��
function ItemUse_70SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Crusader Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1394 , 1 , 22) 
end
---------------------70���ѻ����䱦��

function ItemUse_70JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Sharpshooter Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 42 , 1 , 22) 
end

---------------------70���������䱦��
function ItemUse_70HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Voyager Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1421 , 1 , 22) 
end
---------------------70��ʥְ���䱦��
function ItemUse_70SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Cleric Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4198 , 1 , 22) 
end
---------------------50��˫������
function ItemUse_50SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Crusader Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0299 , 1 , 22) 
	GiveItem ( role , 0 , 0475 , 1 , 22) 
	GiveItem ( role , 0 , 0651 , 1 , 22) 
end
--------------------60��˫������
function ItemUse_60SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Crusader Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0304 , 1 , 22) 
	GiveItem ( role , 0 , 0480 , 1 , 22) 
	GiveItem ( role , 0 , 0656 , 1 , 22) 
end
--------------------70��˫������
function ItemUse_70SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Crusader Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4150 , 1 , 22) 
	GiveItem ( role , 0 , 4166 , 1 , 22) 
	GiveItem ( role , 0 , 4182 , 1 , 22) 
end
--------------------50���޽�����
function ItemUse_50JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Champion Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0229 , 1 , 22) 
	GiveItem ( role , 0 , 653 , 1 , 22)  
end
--------------------60���޽�����
function ItemUse_60JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Champion Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0230 , 1 , 22) 
	GiveItem ( role , 0 , 477 , 1 , 22)  
end
--------------------70���޽�����
function ItemUse_70JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Champion Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4148 , 1 , 22) 
	GiveItem ( role , 0 , 653 , 1 , 22)  
	GiveItem ( role , 0 , 477 , 1 , 22)
end
--------------------50��ʥְ����
function ItemUse_50SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0371 , 1 , 22) 
	GiveItem ( role , 0 , 0547 , 1 , 22)  
	GiveItem ( role , 0 , 0723 , 1 , 22) 
end
--------------------60��ʥְ����
function ItemUse_60SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0394 , 1 , 22) 
	GiveItem ( role , 0 , 0570 , 1 , 22)  
	GiveItem ( role , 0 , 0746 , 1 , 22) 
end
--------------------70��ʥְ����
function ItemUse_70SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4159 , 1 , 22) 
	GiveItem ( role , 0 , 4175 , 1 , 22)  
	GiveItem ( role , 0 , 4191 , 1 , 22) 
end
--------------------50������ʥְ����
function ItemUse_50AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Ami Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0382 , 1 , 22) 
	GiveItem ( role , 0 , 0558 , 1 , 22)  
	GiveItem ( role , 0 , 0734 , 1 , 22) 
	GiveItem ( role , 0 , 2204 , 1 , 22) 
end
--------------------60������ʥְ����
function ItemUse_60AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60Ami Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0393 , 1 , 22) 
	GiveItem ( role , 0 , 0569 , 1 , 22)  
	GiveItem ( role , 0 , 0745 , 1 , 22) 
	GiveItem ( role , 0 , 2215 , 1 , 22) 
end
--------------------70������ʥְ����
function ItemUse_70AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Ami Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4160 , 1 , 22) 
	GiveItem ( role , 0 , 4176 , 1 , 22)  
	GiveItem ( role , 0 , 4192 , 1 , 22)  
end
--------------------50�����׷�ӡ����
function ItemUse_50AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Ami Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0385 , 1 , 22) 
	GiveItem ( role , 0 , 0561 , 1 , 22)  
	GiveItem ( role , 0 , 0737 , 1 , 22) 
	GiveItem ( role , 0 , 2207 , 1 , 22) 
end
--------------------60�����׷�ӡ����
function ItemUse_60AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Ami Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0364 , 1 , 22) 
	GiveItem ( role , 0 , 0540 , 1 , 22)  
	GiveItem ( role , 0 , 0716 , 1 , 22) 
	GiveItem ( role , 0 , 2201 , 1 , 22) 
end
--------------------70�����׷�ӡ����
function ItemUse_70AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Ami Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4164 , 1 , 22) 
	GiveItem ( role , 0 , 4180 , 1 , 22)  
	GiveItem ( role , 0 , 4196 , 1 , 22) 
end
--------------------50��������ӡ����
function ItemUse_50AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Ami Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0355 , 1 , 22) 
	GiveItem ( role , 0 , 0531 , 1 , 22)  
	GiveItem ( role , 0 , 0707 , 1 , 22) 
	GiveItem ( role , 0 , 2192 , 1 , 22) 
end
--------------------60��������ӡ����
function ItemUse_60AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Ami Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0358 , 1 , 22) 
	GiveItem ( role , 0 , 0534 , 1 , 22)  
	GiveItem ( role , 0 , 0710 , 1 , 22) 
	GiveItem ( role , 0 , 2195 , 1 , 22) 
end
--------------------70��������ӡ����
function ItemUse_70AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Ami Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4156 , 1 , 22) 
	GiveItem ( role , 0 , 4172 , 1 , 22)  
	GiveItem ( role , 0 , 4188 , 1 , 22)  
end
--------------------50���ѻ�����
function ItemUse_50JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Sharpshooter Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0312 , 1 , 22) 
	GiveItem ( role , 0 , 0488 , 1 , 22)  
	GiveItem ( role , 0 , 0664 , 1 , 22) 
end
--------------------60���ѻ�����
function ItemUse_60JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Sharpshooter Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0317 , 1 , 22) 
	GiveItem ( role , 0 , 0493 , 1 , 22)  
	GiveItem ( role , 0 , 0669 , 1 , 22) 
end
--------------------70���ѻ�����
function ItemUse_70JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Sharpshooter Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4152 , 1 , 22) 
	GiveItem ( role , 0 , 4168 , 1 , 22)  
	GiveItem ( role , 0 , 4184 , 1 , 22) 
end
--------------------50����������
function ItemUse_50HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0345 , 1 , 22) 
	GiveItem ( role , 0 , 0521 , 1 , 22)  
	GiveItem ( role , 0 , 0697 , 1 , 22) 
end
--------------------60����������
function ItemUse_60HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0344 , 1 , 22) 
	GiveItem ( role , 0 , 0520 , 1 , 22)  
	GiveItem ( role , 0 , 0696 , 1 , 22) 
end
--------------------70����������
function ItemUse_70HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4155 , 1 , 22) 
	GiveItem ( role , 0 , 4171 , 1 , 22)  
	GiveItem ( role , 0 , 4187 , 1 , 22) 
end
--------------------50����ӡ����
function ItemUse_50FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0369 , 1 , 22) 
	GiveItem ( role , 0 , 0545 , 1 , 22)  
	GiveItem ( role , 0 , 0721 , 1 , 22) 
end
--------------------60����ӡ����
function ItemUse_60FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0377 , 1 , 22) 
	GiveItem ( role , 0 , 0553 , 1 , 22)  
	GiveItem ( role , 0 , 0729 , 1 , 22) 
end
--------------------70����ӡ����
function ItemUse_70FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4163 , 1 , 22) 
	GiveItem ( role , 0 , 4179 , 1 , 22)  
	GiveItem ( role , 0 , 4195 , 1 , 22) 
end
--98���ð�
function ItemUse_98BOX ( role , Item )
			local item_type = BaoXiang_98BOX
			local item_type_rad = BaoXiang_98BOX_Rad 
			local item_type_count = BaoXiang_98BOX_Count 
			local maxitem = BaoXiang_98BOX_Mxcount
			local item_quality = BaoXiang_98BOX_Qua
			local General = 0  
			local ItemId = 0 
			
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		
		if Item_CanGet <= 0 then
			SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
			UseItemFailed ( role )
			return
		end
				for i = 1 , maxitem , 1 do 
					General = item_type_rad [ i ] + General
				end 
				local a = math.random ( 1, General )
				local b = 0
				local d = 0 
				local c = -1
				for k = 1 , maxitem , 1 do

					d = item_type_rad [ k ] + b

					 if a <= d and a > b then
						c = k
						break		
					end 
					b = d 
				end 
				if c == -1 then 
					ItemId = 3124 
				else 
					ItemId = item_type [c]  
					ItemCount = item_type_count [c] 
				end 

				GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
		
				local GoodItem = {}
				GoodItem[0] = 3074
				GoodItem[1] = 0937
				GoodItem[2] = 3885
				GoodItem[3] = 0680
				GoodItem[4] = 0938
				GoodItem[5] = 2488
				GoodItem[6] = 2489
				GoodItem[7] = 2490
				GoodItem[8] =2436
				GoodItem[9] =3075

				local Good_C = 0
				for Good_C = 0 , 9 , 1 do
					if ItemId == GoodItem[Good_C] then
						local itemname = GetItemName ( ItemId ) 
						local cha_name = GetChaDefaultName ( role ) 
						local message = cha_name.." opens a Paradise Pouch and obtain "..itemname  
						Notice ( message )
					end
				end
	
	end
--------------------����ʯ�һ�ȯ
function ItemUse_lieyanBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Fiery Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0878 , 1 , 4) 
end
--------------------����ʯ�һ�ȯ
function ItemUse_zhiyanBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Furious Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0879 , 1 , 4) 
end
--------------------��ҩʯ�һ�ȯ
function ItemUse_huoyaoBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Explosive Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0880 , 1 , 4) 
end
--------------------���ʯ�һ�ȯ
function ItemUse_manaoBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lustrious Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0881 , 1 , 4) 
end
--------------------ʥ��ʯ�һ�ȯ
function ItemUse_shengguangBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Spirit Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0887 , 1 , 4) 
end
--------------------��֮�Ķһ�ȯ
function ItemUse_yuezhixinBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Shining Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0883 , 1 , 4) 
end
--------------------����һ�ȯ
function ItemUse_hanyuBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Glowing Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0882 , 1 , 4) 
end
--------------------����ʯ�һ�ȯ
function ItemUse_fenglingBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Gem of the Wind Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0860 , 1 , 4) 
end
--------------------����ʯ�һ�ȯ
function ItemUse_xianlingBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Shadow Gem Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0884 , 1 , 4) 
end
--------------------ӥ��ʯ�һ�ȯ
function ItemUse_yingyanBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Gem of Striking Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0861 , 1 , 4) 
end
--------------------����һ�ȯ
function ItemUse_yanyuBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Gem of Colossus Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0862 , 1 , 4) 
end
--------------------����һ�ȯ
function ItemUse_tanyuBook( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Gem of Rage Voucher")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0863 , 1 , 4) 
end
--------------------50��˫�����䱦��
function ItemUse_50SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Crusader Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1392 , 1 , 22) 
end
--------------------50���޽����䱦��
function ItemUse_50JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Champion Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1373 , 1 , 22) 
end
--------------------50���ѻ����䱦��
function ItemUse_50JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Sharpshooter Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0040 , 1 , 22) 
end
--------------------50���������䱦��
function ItemUse_50HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Voyager Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1419 , 1 , 22) 
end
--------------------50��ʥְ���䱦��
function ItemUse_50SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Cleric Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0103 , 1 , 22) 
end
--------------------50����ӡ���䱦��
function ItemUse_50FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Seal Master Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0102 , 1 , 22) 
end



--------------------60��˫�����䱦��
function ItemUse_60SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Crusader Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1393 , 1 , 22) 
end
--------------------60���޽����䱦��
function ItemUse_60JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Champion Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1374 , 1 , 22) 
end
--------------------60���ѻ����䱦��
function ItemUse_60JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Sharpshooter Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0041 , 1 , 22) 
end
--------------------60���������䱦��
function ItemUse_60HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Voyager Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1420 , 1 , 22) 
end
--------------------60��ʥְ���䱦��
function ItemUse_60SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Cleric Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4303 , 1 , 22) 
end
--------------------60����ӡ���䱦��
function ItemUse_60FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Seal Master Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4300 , 1 , 22) 
end
--------------------����֮�ģ�����֮��
function ItemUse_CZZX( role , Item )
	local statelv = 1
	local statetime = 30
	local Item_ID=GetItemID(Item)
	AddState( role , role , STATE_CZZX , statelv , statetime )
	if Item_ID~=1013 then
		GiveItem ( role , 0 , 1010 , 1 , 4)
	end
--		SystemNotice( role , "����Ʒ�ѱ�������ʴ,����ʹ��." )
--		UseItemFailed ( role )
end
--------------------�Ի�����
function ItemUse_HHLP( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0


	if CheckDateNum >= 10122  and CheckDateNum <= 10123 then
		ItemUse_XNBOX ( role , Item )


	--if CheckDateNum >= 100122  and CheckDateNum <= 100123 then
		--star=1
	--end
	--if CheckDateNum >= 100622  and CheckDateNum <= 100623 then
		--star=1
	--end
	--if star ==1 then
		--ItemUse_BaoZhaBOX ( role , Item )	
	end
end
--------------------����֮��
function ItemUse_GNZS( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		local attr_sta = GetChaAttr( role , ATTR_STA )
		local sta_extre = 5
		attr_sta = attr_sta + sta_extre 
		SetCharaAttr( attr_sta, role, ATTR_STA )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end
--------------------���ܾ��鵰
function ItemUse_JNJLD( role , Item )
	local star=math.random ( 1, 10 )
	local r1 = 0
	local r2 = 0
	if star==1 then
		r1,r2=MakeItem( role , 183 , 1 , 4)
	elseif  star==2 then
		r1,r2=MakeItem( role , 184 , 1 , 4)
	elseif  star==3 then
		r1,r2=MakeItem( role , 185 , 1 , 4)
	elseif  star==4 then
		r1,r2=MakeItem( role , 186 , 1 , 4)
	elseif  star==5 then
		r1,r2=MakeItem( role , 187 , 1 , 4)
	elseif  star==6 then
		r1,r2=MakeItem( role , 188 , 1 , 4)
	elseif  star==7 then
		r1,r2=MakeItem( role , 189 , 1 , 4)
	elseif  star==8 then
		r1,r2=MakeItem( role , 190 , 1 , 4)
	elseif  star==9 then
		r1,r2=MakeItem( role , 191 , 1 , 4)
	else  
		r1,r2=MakeItem( role , 199 , 1 , 4)
	end
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
	local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 �� Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )
	local Part4_newJL = GetNum_Part4 ( Num_newJL )
	local Part5_newJL = GetNum_Part5 ( Num_newJL )
	local Part6_newJL = GetNum_Part6 ( Num_newJL )
	local Part7_newJL= GetNum_Part7 ( Num_newJL )
	local t={}
		t[0]=1
		t[1]=2
		t[2]=3
		t[3]=4
		t[4]=5
	local eleven=math.random ( 1,3 )
	Part2_newJL=t[eleven-1]
	Part4_newJL=t[eleven]
	Part6_newJL=t[eleven+1]
	Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
	Num_newJL = SetNum_Part3 ( Num_newJL , 1 )
	Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
	Num_newJL = SetNum_Part5 ( Num_newJL , 1 )
	Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
	Num_newJL = SetNum_Part7 ( Num_newJL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
end
-----------------------------------------------------------
--�����ٻ�
function ItemUse_NSSN ( role , Item  )
	local cha_name = GetChaDefaultName ( role )
	LG( "KaiXiaoBaoDeSB" ,cha_name )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 857
	local Refresh = 3700					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
-----------------------------------------------------------
----���ɱ���
function ItemUse_JaNaBox ( role , Item ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1012 , 1 , 4) 			
	local itemname = GetItemName (1012) 
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." opens Chest of Ascaron and obtain "..itemname  
	Notice ( message )
end


--------�������˺���װ��--Leo
function gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local cha_name = GetChaDefaultName ( role ) 
	local General = 0  
	local ItemId = 0 
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	if ItemId==0845 or ItemId==0846 or ItemId==0847 or ItemId==0848 then
		local check_rad = math.random ( 1, 100 )
		local heilong_rad = math.random ( 1, 1000 )
		if check_rad==99 and heilong_rad>=999 then
			item_quality=16
		elseif  check_rad==99 and  heilong_rad>=900 then 
			item_quality=15
		elseif  check_rad==99 and  heilong_rad>=500 then 
			item_quality=14
		elseif  check_rad==99 and  heilong_rad>=200 then 
			item_quality=13
		elseif  check_rad==99 then  
			item_quality=12
		else 
			ItemId=0266
		end
	end	
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 0845
	GoodItem[1] = 0846
	GoodItem[2] = 0847
	GoodItem[3] = 0848
	GoodItem[4] = 0266
	local Good_C = 0
	for Good_C = 0 , 4 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local message = cha_name.." opens a Black Market Equipment and obtain "..itemname  
			Notice ( message )
		end
	end
	--LG( "HeiShiZhangBei_XinXi" , cha_name , ItemId )

	return 1
end

--��������24��
function ItemUse_jsyla( role , Item )
	local item_quality =BaoXiang_jsyla_Qua
	local maxitem = BaoXiang_jsyla_Mxcount
	local item_type = BaoXiang_jsyla
	local item_type_rad =BaoXiang_jsyla_Rad

	local item_type_count =BaoXiang_jsyla_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��������23��
function ItemUse_jsylb( role , Item )
	local item_quality =BaoXiang_jsylb_Qua
	local maxitem =BaoXiang_jsylb_Mxcount
	local item_type = BaoXiang_jsylb
	local item_type_rad =BaoXiang_jsylb_Rad

	local item_type_count =BaoXiang_jsylb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��֮���б���24��
function ItemUse_jsmzlra( role , Item )
	local item_quality =BaoXiang_jsmzlra_Qua
	local maxitem =BaoXiang_jsmzlra_Mxcount
	local item_type = BaoXiang_jsmzlra
	local item_type_rad =BaoXiang_jsmzlra_Rad

	local item_type_count =BaoXiang_jsmzlra_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��֮���б���23��
function ItemUse_jsmzlrb( role , Item )
	local item_quality =BaoXiang_jsmzlrb_Qua
	local maxitem =BaoXiang_jsmzlrb_Mxcount
	local item_type = BaoXiang_jsmzlrb
	local item_type_rad =BaoXiang_jsmzlrb_Rad

	local item_type_count =BaoXiang_jsmzlrb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--���ڱ���24��
function ItemUse_jsjqa( role , Item )
	local item_quality =BaoXiang_jsjqa_Qua
	local maxitem =BaoXiang_jsjqa_Mxcount
	local item_type = BaoXiang_jsjqa
	local item_type_rad =BaoXiang_jsjqa_Rad

	local item_type_count =BaoXiang_jsjqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--���ڱ���23��
function ItemUse_jsjqb( role , Item )
	local item_quality =BaoXiang_jsjqb_Qua
	local maxitem =BaoXiang_jsjqb_Mxcount
	local item_type = BaoXiang_jsjqb
	local item_type_rad =BaoXiang_jsjqb_Rad

	local item_type_count =BaoXiang_jsjqb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��֮�þ�����24��
function ItemUse_jsmzcja( role , Item )
	local item_quality =BaoXiang_jsmzcja_Qua
	local maxitem =BaoXiang_jsmzcja_Mxcount
	local item_type = BaoXiang_jsmzcja
	local item_type_rad =BaoXiang_jsmzcja_Rad

	local item_type_count =BaoXiang_jsmzcja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��֮�þ�����23��
function ItemUse_jsmzcjb( role , Item )
	local item_quality =BaoXiang_jsmzcjb_Qua
	local maxitem =BaoXiang_jsmzcjb_Mxcount
	local item_type = BaoXiang_jsmzcjb
	local item_type_rad =BaoXiang_jsmzcjb_Rad

	local item_type_count =BaoXiang_jsmzcjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--˫�����ױ���24��
function ItemUse_jssjkja( role , Item )
	local item_quality =BaoXiang_jssjkja_Qua
	local maxitem =BaoXiang_jssjkja_Mxcount
	local item_type = BaoXiang_jssjkja
	local item_type_rad =BaoXiang_jssjkja_Rad

	local item_type_count =BaoXiang_jssjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--˫�����ױ���23��
function ItemUse_jssjkjb( role , Item )
	local item_quality =BaoXiang_jssjkjb_Qua
	local maxitem =BaoXiang_jssjkjb_Mxcount
	local item_type = BaoXiang_jssjkjb
	local item_type_rad =BaoXiang_jssjkjb_Rad

	local item_type_count =BaoXiang_jssjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�ѻ����ױ���24��
function ItemUse_jszjkja( role , Item )
	local item_quality =BaoXiang_jszjkja_Qua
	local maxitem =BaoXiang_jszjkja_Mxcount
	local item_type = BaoXiang_jszjkja
	local item_type_rad =BaoXiang_jszjkja_Rad

	local item_type_count =BaoXiang_jszjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�ѻ����ױ���23��
function ItemUse_jszjkjb( role , Item )
	local item_quality =BaoXiang_jszjkjb_Qua
	local maxitem =BaoXiang_jszjkjb_Mxcount
	local item_type = BaoXiang_jszjkjb
	local item_type_rad =BaoXiang_jszjkjb_Rad

	local item_type_count =BaoXiang_jszjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--ʥְ���ױ���24��
function ItemUse_jsszkja( role , Item )
	local item_quality =BaoXiang_jsszkja_Qua
	local maxitem =BaoXiang_jsszkja_Mxcount
	local item_type = BaoXiang_jsszkja
	local item_type_rad =BaoXiang_jsszkja_Rad

	local item_type_count =BaoXiang_jsszkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--ʥְ���ױ���23��
function ItemUse_jsszkjb( role , Item )
	local item_quality =BaoXiang_jsszkjb_Qua
	local maxitem =BaoXiang_jsszkjb_Mxcount
	local item_type = BaoXiang_jsszkjb
	local item_type_rad =BaoXiang_jsszkjb_Rad

	local item_type_count =BaoXiang_jsszkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��ӡ���ױ���24��
function ItemUse_jsfykja( role , Item )
	local item_quality =BaoXiang_jsfykja_Qua
	local maxitem =BaoXiang_jsfykja_Mxcount
	local item_type = BaoXiang_jsfykja
	local item_type_rad =BaoXiang_jsfykja_Rad

	local item_type_count =BaoXiang_jsfykja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��ӡ���ױ���23��
function ItemUse_jsfykjb( role , Item )
	local item_quality =BaoXiang_jsfykjb_Qua
	local maxitem =BaoXiang_jsfykjb_Mxcount
	local item_type = BaoXiang_jsfykjb
	local item_type_rad =BaoXiang_jsfykjb_Rad

	local item_type_count =BaoXiang_jsfykjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�������ױ���24��
function ItemUse_jshhkja( role , Item )
	local item_quality =BaoXiang_jshhkja_Qua
	local maxitem =BaoXiang_jshhkja_Mxcount
	local item_type = BaoXiang_jshhkja
	local item_type_rad =BaoXiang_jshhkja_Rad

	local item_type_count =BaoXiang_jshhkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�������ױ���23��
function ItemUse_jshhkjb( role , Item )
	local item_quality =BaoXiang_jshhkjb_Qua
	local maxitem =BaoXiang_jshhkjb_Mxcount
	local item_type = BaoXiang_jshhkjb
	local item_type_rad =BaoXiang_jshhkjb_Rad

	local item_type_count =BaoXiang_jshhkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�޽����ױ���24��
function ItemUse_jsjjkja( role , Item )
	local item_quality =BaoXiang_jsjjkja_Qua
	local maxitem =BaoXiang_jsjjkja_Mxcount
	local item_type = BaoXiang_jsjjkja
	local item_type_rad =BaoXiang_jsjjkja_Rad

	local item_type_count =BaoXiang_jsjjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�޽����ױ���23��
function ItemUse_jsjjkjb( role , Item )
	local item_quality =BaoXiang_jsjjkjb_Qua
	local maxitem =BaoXiang_jsjjkjb_Mxcount
	local item_type = BaoXiang_jsjjkjb
	local item_type_rad =BaoXiang_jsjjkjb_Rad

	local item_type_count =BaoXiang_jsjjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮������24��
function ItemUse_jshlza( role , Item )
	local item_quality =BaoXiang_jshlza_Qua
	--local 
	local maxitem =BaoXiang_jshlza_Mxcount
	local item_type = BaoXiang_jshlza
	local item_type_rad =BaoXiang_jshlza_Rad

	local item_type_count =BaoXiang_jshlza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮������23��
function ItemUse_jshlzb( role , Item )
	local item_quality =BaoXiang_jshlzb_Qua
	local maxitem =BaoXiang_jshlzb_Mxcount
	local item_type = BaoXiang_jshlzb
	local item_type_rad =BaoXiang_jshlzb_Rad

	local item_type_count =BaoXiang_jshlzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮�ױ���24��
function ItemUse_jshlta( role , Item )
	local item_quality =BaoXiang_jshlta_Qua
	local maxitem =BaoXiang_jshlta_Mxcount
	local item_type = BaoXiang_jshlta
	local item_type_rad =BaoXiang_jshlta_Rad

	local item_type_count =BaoXiang_jshlta_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮צ����24��
function ItemUse_jshlsa( role , Item )
	local item_quality =BaoXiang_jshlsa_Qua
	local maxitem =BaoXiang_jshlsa_Mxcount
	local item_type = BaoXiang_jshlsa
	local item_type_rad =BaoXiang_jshlsa_Rad

	local item_type_count =BaoXiang_jshlsa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮צ����23��
function ItemUse_jshlsb( role , Item )
	local item_quality =BaoXiang_jshlsb_Qua
	local maxitem =BaoXiang_jshlsb_Mxcount
	local item_type = BaoXiang_jshlsb
	local item_type_rad =BaoXiang_jshlsb_Rad

	local item_type_count =BaoXiang_jshlsb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮������24��
function ItemUse_jshlya( role , Item )
	local item_quality =BaoXiang_jshlya_Qua
	local maxitem =BaoXiang_jshlya_Mxcount
	local item_type = BaoXiang_jshlya
	local item_type_rad =BaoXiang_jshlya_Rad

	local item_type_count =BaoXiang_jshlya_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--����֮������23��
function ItemUse_jshlyb( role , Item )
	local item_quality =BaoXiang_jshlyb_Qua
	local maxitem =BaoXiang_jshlyb_Mxcount
	local item_type = BaoXiang_jshlyb
	local item_type_rad =BaoXiang_jshlyb_Rad

	local item_type_count =BaoXiang_jshlyb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�Ի�֮�̱���24��
function ItemUse_jsmhzca( role , Item )
	local item_quality =BaoXiang_jsmhzca_Qua
	local maxitem =BaoXiang_jsmhzca_Mxcount
	local item_type = BaoXiang_jsmhzca
	local item_type_rad =BaoXiang_jsmhzca_Rad

	local item_type_count =BaoXiang_jsmhzca_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�Ի�֮�̱���23��
function ItemUse_jsmhzcb( role , Item )
	local item_quality =BaoXiang_jsmhzcb_Qua
	local maxitem =BaoXiang_jsmhzcb_Mxcount
	local item_type = BaoXiang_jsmhzcb
	local item_type_rad =BaoXiang_jsmhzcb_Rad

	local item_type_count =BaoXiang_jsmhzcb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--���䷨�ȱ���24��
function ItemUse_jsmzfza( role , Item )
	local item_quality =BaoXiang_jsmzfza_Qua
	local maxitem =BaoXiang_jsmzfza_Mxcount
	local item_type = BaoXiang_jsmzfza
	local item_type_rad =BaoXiang_jsmzfza_Rad

	local item_type_count =BaoXiang_jsmzfza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--���䷨�ȱ���23��
function ItemUse_jsmzfzb( role , Item )
	local item_quality =BaoXiang_jsmzfzb_Qua
	local maxitem =BaoXiang_jsmzfza_Mxcount
	local item_type = BaoXiang_jsmzfzb
	local item_type_rad =BaoXiang_jsmzfzb_Rad

	local item_type_count =BaoXiang_jsmzfzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�Է�֮�ȱ���24��
function ItemUse_jsmfzza( role , Item )
	local item_quality =BaoXiang_jsmfzza_Qua
	local maxitem =BaoXiang_jsmfzza_Mxcount
	local item_type = BaoXiang_jsmfzza
	local item_type_rad =BaoXiang_jsmfzza_Rad

	local item_type_count =BaoXiang_jsmfzza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--�Է�֮�ȱ���23��
function ItemUse_jsmfzzb( role , Item )
	local item_quality =BaoXiang_jsmfzzb_Qua
	local maxitem =BaoXiang_jsmfzzb_Mxcount
	local item_type = BaoXiang_jsmfzzb
	local item_type_rad =BaoXiang_jsmfzzb_Rad

	local item_type_count =BaoXiang_jsmfzzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--��֮��ǹ����24��
function ItemUse_jsmzcqa( role , Item )
	local item_quality =BaoXiang_jsmzcqa_Qua
	local maxitem =BaoXiang_jsmzcqa_Mxcount
	local item_type = BaoXiang_jsmzcqa
	local item_type_rad =BaoXiang_jsmzcqa_Rad

	local item_type_count =BaoXiang_jsmzcqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

--��֮��ǹ����23��
function ItemUse_jsmzcqa( role , Item )
	local item_quality =BaoXiang_jsmzcqa_Qua
	local maxitem =BaoXiang_jsmzcqa_Mxcount
	local item_type = BaoXiang_jsmzcqa
	local item_type_rad =BaoXiang_jsmzcqa_Rad

	local item_type_count =BaoXiang_jsmzcqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end


--���������

--������ʤ��
function ItemUse_kala( role , Item )
--	SystemNotice(role ,"The time has lots its effect after being abandon for too long, don't be too sad.")
	local statelv = 1
	local statetime = 20
	AddState( role , role , STATE_KALA , statelv , statetime )
end
-----------------------------------------------------------
--�����ٻ�
function ItemUse_MHDYSD ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
		UseItemFailed ( role )
		return
	end
	--local pet_num = GetPetNum(role)
	--if pet_num > 1 then
	--	SystemNotice( role , "You have reached the maximum number of pets!" )
	--	return
	--end
	local x, y = GetChaPos(role)
	local MonsterID = 858
	local Refresh = 190					--����ʱ�䣬�뵥λ
	local life = 180000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	--SetChaHost(new,role)
	SetChaLifeTime( new, life )
	--SetChaTarget(new, role)
end
----------ħ��Ů��
function ItemUse_mohuan( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 1000 )
	SystemNotice(role ,"star=="..star)
	if star<=8 then
		GiveItem ( role , 0 , 1014  , 1 , 4  )
		local message = cha_name.." opens a Enchanting Goddess Card and obtained Goddess's Trainee Ceremony" 
		Notice ( message )
	elseif star>=9 and star<=17 then
		GiveItem ( role , 0 , 271, 1 , 4  ) 
		local message1 = cha_name.." opens an Enchanting Goddess Card and obtained Angelic Dice" 
		Notice ( message1 )
	elseif star>=18 and star<=27 then
		GiveItem ( role , 0 , 1012, 1 , 4  ) 
		local message3 = cha_name.." opens Enchanting Goddess Card and obtain a Gem of Soul" 
		Notice ( message3 )
	elseif star>=28 and star<=227 then
		GiveItem ( role , 0 , 3886, 1 , 4  ) 
	else
		GiveItem ( role , 0 , 3830, 5 , 4  ) 
	end
end
----------ħ����ĸ������
function ItemUse_MoHuanBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 4663 )
	if star>=1 and star<=3 then
		GiveItem ( role , 0 , 3866, 1 , 4  ) 	
	elseif star>=4 and star<=14 then
		GiveItem ( role , 0 , 3864, 1 , 4  ) 		
	elseif star>=15 and star<=65 then
		GiveItem ( role , 0 , 3858, 1 , 4  )		
	else
		local star=math.random ( 3850, 3875 )
		if star==3858 or star==3864 or star==3866  then
			GiveItem ( role , 0 , 3850  , 1 , 4  )
		else 
			GiveItem ( role , 0 , star  , 1 , 4  ) 			
		end
	end
end
-----------------------------------------���������Ա�
function Sk_Script_CJJLZB( role , Item ) 							
 	local sk_add = SK_JLZB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
 -----------------------------------------�м������Ա�
function Sk_Script_ZJJLZB ( role , Item ) 							
	local sk_add = SK_JLZB
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 2 then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 2 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
 -----------------------------------------�߼������Ա�
function Sk_Script_GJJLZB( role , Item ) 							
 	local sk_add = SK_JLZB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 3  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 3 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
---------------------------ģ����ͼֽ
function ItemUse_MHDTZ( role , Item ) 							
 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"To open Blurry Blueprint requires at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end  	
	local r1 = 0
	local r2 = 0
	local item_ID=GetItemID(Item)
	local Itemnew_ID=2300
	local rad_ID=math.random ( 1, 100 )
	if rad_ID<=40 then
		Itemnew_ID=2300  --------����ͼֽ
	elseif rad_ID>=41 and rad_ID<=81 then
		Itemnew_ID=2302  --------���ͼֽ
	else
		Itemnew_ID=2301  --------����ͼֽ
	end
	r1, r2 = MakeItem ( role , Itemnew_ID  , 1 , 4 )
	local Itemnew = GetChaItem ( role , 2 , r2 )


	local rad_energy=math.random ( 1, 100 )
	local energy = 1--------���ּ�ͼֽ
	if item_ID==1000 then-------���ּ�ģ��ͼֽ
		energy=1
	elseif item_ID==1001 then -------����ģ��ͼֽ
		if rad_energy<=5 then
			energy=4
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=3
		else
			energy=2
		end
	elseif item_ID==1002 then -------�м�ģ��ͼֽ
		if rad_energy<=5 then
			energy=6
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=5
		else
			energy=4
		end
	elseif item_ID==1003 then -------�߼�ģ��ͼֽ
		if rad_energy<=5 and Itemnew_ID~=2301 then------------���첻����80����Ʒ
			energy=8
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=7
		else
			energy=6
		end
	end	
	--SystemNotice(role ,"item_ID=="..item_ID)
	--SystemNotice(role ,"rad_energy=="..rad_energy)
	--SystemNotice(role ,"energy=="..energy)

	local final_ID=1849 --------Ĭ�ϵ���
	local final_LV=20 --------Ĭ��20
	local final_ID1=3116 --------Ĭ�Ͼ����
	local final_ID2=3116 --------Ĭ�Ͼ����
	local final_ID3=3116 --------Ĭ�Ͼ����
	------����ȡ��������Ʒ��ID
	local General = 0  
	local ItemId =3124
	if Itemnew_ID==2300 then -----����
		local STAR_BEGIN=ZHIZAO_Mxcount*(energy-1)/10+1
		local STAR_END=ZHIZAO_Mxcount*energy/10
	--SystemNotice(role ,"STAR_BEGIN=="..STAR_BEGIN)
	--SystemNotice(role ,"STAR_END=="..STAR_END)

		for i = STAR_BEGIN , STAR_END , 1 do 
			  General = ZHIZAO__Rad[ i ] + General
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1		
		for k = STAR_BEGIN , STAR_END , 1 do
			d = ZHIZAO__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
	--SystemNotice(role ,"c=="..c)

		--local rad_num1=math.random ( 1, 280 )
		final_ID=ZHIZAO_ID[c]
		final_LV=ZHIZAO_LV[c]
		final_ID1=ZHIZAO_ID1[c]
		final_ID2=ZHIZAO_ID2[c]
		final_ID3=ZHIZAO_ID3[c]

	end
	if Itemnew_ID==2301 then -----����
		local STAR_BEGIN=1
		local STAR_END=77
		if energy==1 then
			STAR_BEGIN=1
			STAR_END=77
		elseif energy==2 then
			STAR_BEGIN=78
			STAR_END=166
		elseif energy==3 then
			STAR_BEGIN=167
			STAR_END=278
		elseif energy==4 then
			STAR_BEGIN=279
			STAR_END=434
		elseif energy==5 then
			STAR_BEGIN=435
			STAR_END=596
		elseif energy==6 then
			STAR_BEGIN=597
			STAR_END=732
		elseif energy==7 then
			STAR_BEGIN=733
			STAR_END=871--------872�Ժ�Ŀǰ������
		elseif energy==8 then
			STAR_BEGIN=895
			STAR_END=902
		end
		--SystemNotice( role ,"energy=="..energy)
		--SystemNotice( role ,"STAR_BEGIN=="..STAR_BEGIN)
		--SystemNotice( role ,"STAR_END=="..STAR_END)

		for i = STAR_BEGIN , STAR_END , 1 do 
			  General = ZHUZAO__Rad[ i ] + General
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1		
		for k = STAR_BEGIN , STAR_END , 1 do
			d = ZHUZAO__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
				end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
		--local rad_num2=math.random ( 1, 906 )
		final_ID=ZHUZAO_ID[c]
		final_LV=ZHUZAO_LV[c]
		final_ID1=ZHUZAO_ID1[c]
		final_ID2=ZHUZAO_ID2[c]
		final_ID3=ZHUZAO_ID3[c]		
		local final_type=GetItemType2(final_ID)
		local check=0
		local i = 0
		for i = 0 , Item_CanJinglian_Num  , 1 do
			if final_type == Item_CanJinglian_ID [i] then
				check=1
			end
		end
		--SystemNotice( role ,"check=="..check)

		if  check==1 then-----------------����������װ��ʱ
			local check_rad=math.random ( 1, 1000 )
			if check_rad==1 then
				final_LV=70
			elseif check_rad>=2 and check_rad<=11 then
				final_LV=60
			elseif check_rad>=12 and check_rad<=21 then
				final_LV=50
			elseif check_rad>=22 and check_rad<=221 then
				final_LV=40
			elseif check_rad>=222 and check_rad<=421 then
				final_LV=30
			elseif check_rad>=422 and check_rad<=621 then
				final_LV=20
			else
				final_LV=10				
			end
			if final_LV>70 then
				final_LV=70
			end
			--SystemNotice( role ,"check_energy=="..energy)

			if final_LV~=10 and final_LV~=0 then
				local tmd=(energy-1)*6+final_LV*0.1-1
			--SystemNotice( role ,"tmd=="..tmd)
				final_ID3=TESHU_ID[tmd]
			--SystemNotice( role ,"TESHU_ID[tmd]=="..TESHU_ID[tmd])
			end
		end
	end
	if Itemnew_ID==2302 then -----���
		local STAR_BEGIN=1
		local STAR_END=80
		if energy==1 then
			STAR_BEGIN=1
			STAR_END=7
		elseif energy==2 then
			STAR_BEGIN=8
			STAR_END=12
		elseif energy==3 then
			STAR_BEGIN=13
			STAR_END=17
		elseif energy==4 then
			STAR_BEGIN=18
			STAR_END=26
		elseif energy==5 then
			STAR_BEGIN=27
			STAR_END=31
		elseif energy==6 then
			STAR_BEGIN=32
			STAR_END=36
		else
			STAR_BEGIN=energy+30
			STAR_END=energy+30    
		end
		for i = STAR_BEGIN , STAR_END , 1 do 
			  General = ZHIZAO__Rad[ i ] + General
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1		
		for k = STAR_BEGIN , STAR_END , 1 do
			d = PENGREN__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
		--local rad_num3=math.random ( 1, 40 )
		final_ID=PENGREN_ID[c]
		final_LV=PENGREN_LV[c]
		final_ID1=PENGREN_ID1[c]
		final_ID2=PENGREN_ID2[c]
		final_ID3=PENGREN_ID3[c]		
	end
	--SystemNotice(role ,"Blueprint level energy=="..energy)

	local star_number=energy*10
	local yingbi_num=math.random ( 10, star_number )
	if energy<=3 then
		SetItemAttr(Itemnew, ITEMATTR_MAXURE, energy )--����Ӳ������
		SetItemAttr(Itemnew, ITEMATTR_URE, energy )--ͼֽ�ȼ�		
	else
		SetItemAttr(Itemnew, ITEMATTR_MAXURE, yingbi_num )--����Ӳ������
		SetItemAttr(Itemnew, ITEMATTR_URE, energy )--ͼֽ�ȼ�
	end
	local sta =math.random ( 1, 10 )
	if Itemnew_ID==2301 then-------------����ͼֽʹ�ô�������
		sta=sta*0.5
		sta=math.max(1,sta)
	end
	SetItemAttr(Itemnew, ITEMATTR_VAL_STA, sta )--ͼֽʹ�ô���
	--SetItemAttr(Itemnew, ITEMATTR_MAXURE, maxure )--ͼֽʹ�ô���
	local qulity=math.floor(final_LV*0.1)+100
	SetItemAttr(Itemnew, ITEMATTR_MAXENERGY, qulity )--����

	local ure=10-final_LV*0.1-------------Ҫ��ʾ�ɰٷֱ�
	SetItemAttr(Itemnew, ITEMATTR_ENERGY, ure )--�����ɹ���
	--SetItemAttr(Itemnew, ITEMATTR_URE, ure )--�����ɹ���

	SetItemAttr(Itemnew, ITEMATTR_VAL_STR, final_ID1 )--�������1ID
	SetItemAttr(Itemnew, ITEMATTR_VAL_CON, final_ID2 )--�������2ID
	SetItemAttr(Itemnew, ITEMATTR_VAL_DEX, final_ID3 )--�������3ID
	SetItemAttr(Itemnew, ITEMATTR_VAL_AGI, final_ID )--������ƷID

	local Num_new = GetItemForgeParam ( Itemnew , 1 )
	local Part2_new = GetNum_Part2 ( Num_new )	
	local Part4_new = GetNum_Part4 ( Num_new )
	local Part6_new = GetNum_Part6 ( Num_new )
	Part2_new = math.random ( 3, 10 )					--�������1���� 
	Part4_new = math.random ( 2, 6 )					--�������2����
	Part6_new = math.random ( 1, 2 )					--�������3����
	Part6_new = Part6_new*math.max(1,(energy-2))					--�������3����
	Num_new = SetNum_Part2 ( Num_new , Part2_new )
	Num_new = SetNum_Part4 ( Num_new , Part4_new )
	Num_new = SetNum_Part6 ( Num_new , Part6_new )
	SetItemForgeParam ( Itemnew , 1 , Num_new )

end 
--Sk_Script_GS
--Sk_Script_NK
--Sk_Script_JQ
-----------------------------------------Sk_Script_DBs
function Sk_Script_DBs( role , Item ) 							
 	local sk_add = SK_JLTX1  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_NKs
function Sk_Script_NKs( role , Item ) 							
 	local sk_add = SK_JLTX2  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_XZs
function Sk_Script_XZs( role , Item ) 							
 	local sk_add = SK_JLTX3  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_JQs
function Sk_Script_JQs( role , Item ) 							
 	local sk_add = SK_JLTX4  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_BCs
function Sk_Script_BCs( role , Item ) 							
 	local sk_add = SK_JLTX5  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_BSs
function Sk_Script_BSs( role , Item ) 							
 	local sk_add = SK_JLTX6  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_PZs
function Sk_Script_PZs( role , Item ) 							
 	local sk_add = SK_JLTX7  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-----------------------------------------Sk_Script_SZs
function Sk_Script_SZs( role , Item ) 							
 	local sk_add = SK_JLTX8  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
--------------------------�Ŷ�֮��
function ItemUse_TunDuiZhiXing( role , Item ) 							
 	local r1 = 0
	local r2 = 0
	r1, r2 = MakeItem ( role , 1034 , 1 , 4 )
	local Itemnew = GetChaItem ( role , 2 , r2 )
	--SetItemAttr(Itemnew, ITEMATTR_ENERGY, 100 )--��ǰ�洢����
	--SetItemAttr(Itemnew, ITEMATTR_MAXENERGY, 201000 )--��ߴ洢����
	SetItemAttr(Itemnew, ITEMATTR_URE, 100 )--��ǰ�洢����
	SetItemAttr(Itemnew, ITEMATTR_MAXURE, 20100 )--��ߴ洢����
end 

--ID1128	����-��������� �������
function ItemUse_WeiXing( role , Item )
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end
	local lv_star = GetChaAttr( role , ATTR_LV) 
	if lv_star > 40 then
		SystemNotice ( role , "������ ��������� ������������ ������ ��� ������� �� 40 ��." )
		UseItemFailed ( role )
		return
	end
	local statetime = 60+5*(lv_star-1)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	SystemNotice ( role , "���������� ������ ����-��������� �������" )
end

----------------------------------------------------
function ItemUse_JLZhiZ_CJ ( role , Item , Item_Traget )   --��������������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 13		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhiZ_ZJ ( role , Item , Item_Traget )   --�м�����������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 13		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhiZ_GJ ( role , Item , Item_Traget )   --�߼�����������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 3		--Ҫ���ӵ� Skill ����
		local SkillNum = 13		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhuZ_CJ ( role , Item , Item_Traget )   --��������������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 14		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhuZ_ZJ ( role , Item , Item_Traget )   --�м�����������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 14		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLZhuZ_GJ ( role , Item , Item_Traget )   --�߼�����������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 3		--Ҫ���ӵ� Skill ����
		local SkillNum = 14		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLFenJ_CJ ( role , Item , Item_Traget )   --��������ֽ���
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 15		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLFenJ_ZJ ( role , Item , Item_Traget )   --�м�����ֽ���
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 15		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLFenJ_GJ ( role , Item , Item_Traget )   --�߼�����ֽ���
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 3		--Ҫ���ӵ� Skill ����
		local SkillNum = 15		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLPengR_CJ ( role , Item , Item_Traget )   --�������������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 1		--Ҫ���ӵ� Skill ����
		local SkillNum = 16		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLPengR_ZJ ( role , Item , Item_Traget )   --�м����������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 2		--Ҫ���ӵ� Skill ����
		local SkillNum = 16		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
----------------------------------------------------
function ItemUse_JLPengR_GJ ( role , Item , Item_Traget )   --�߼����������
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 --����32λ������Ϣ����
		local SkillType = 3		--Ҫ���ӵ� Skill ����
		local SkillNum = 16		--Ҫ���ӵ�Skill ���

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "��� ��� ����� ����� �����. ������������� ����������. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--ID1134	������ �����
function ItemUse_FightingBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"���������� ������� 2 ��������� �����, ����� ������� ������ ����� ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2610  , 1 , 4 )
	local rad = math.random ( 1, 3 )
	if rad ==1 then
		GiveItem ( role , 0 , 1124  , 1 , 19 )
	end
	
	if rad ==2 then
		GiveItem ( role , 0 , 1125  , 1 , 20 )
	end
	
	if rad ==3 then
		GiveItem ( role , 0 , 1126  , 1 , 15 )
	end

end

--ID4019	������� ����� ������
function ItemUse_XUEYU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------�������ࣺ���HP+400�������ֿ�+2��ʱ��10����
function ItemUse_CUIZHU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------������ˮ�㣺���HP+900�������ֿ�+2��ʱ��10����
function ItemUse_HUIXIANG( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------ӳ�������������HP+1600�������ֿ�+3��ʱ��8����
function ItemUse_YINGYUE( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime =480
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------�˱��м�������HP+2500�������ֿ�+3��ʱ��8����
function ItemUse_LANGBEI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv =5
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 480
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------СС��Ϻ�ȣ����HP+3600�������ֿ�+4��ʱ��6����
function ItemUse_XIAOXIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 360
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------��Ƥ����֣����HP+4900�������ֿ�+5��ʱ��5����
function ItemUse_HUPI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv =7
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 300
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------���޺��ʷ������HP+6400�������ֿ�+6��ʱ��3����
function ItemUse_YINJIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 8
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------���������������HP+8100�������ֿ�+6��ʱ��3����
function ItemUse_TAOTU( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 9
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------������᣺���HP+10000�������ֿ�+8��ʱ��1����
function ItemUse_BAIWANG( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 10
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime =60
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 
---------------------------------- ��ͷ��HP+200��������+50��ʱ��15����
function ItemUse_MANTOU( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 200 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------���ӣ�HP+400��������+150��ʱ��10����
function ItemUse_BAOZI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 400 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime =600
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------�����HP+600��������+250��ʱ��7����
function ItemUse_DABING( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 600 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 420
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------������HP+800��������+350��ʱ��5����
function ItemUse_YOUTIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 800 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime =300
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------������HP+1000��������+450��ʱ��2����
function ItemUse_CHUNJUAN( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 1000 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 
---------------------------------Ů���죺SP+100������+5��ʱ��15����
function ItemUse_NVER( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 100 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------״Ԫ�죺SP+200������+10��ʱ��10����
function ItemUse_ZHUANGYUAN( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 200 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------�ſ���SP+300������+15��ʱ��7����
function ItemUse_DUKANG( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 300 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 420
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------ę́��SP+400������+20��ʱ��5����
function ItemUse_MAOTAI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 400 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 300
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------�˲ξƣ�SP+500������+25��ʱ��3����
function ItemUse_RENSHEN( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 500 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
---------------------------------���Ǿƣ�SP+600������+30��ʱ��2����
function ItemUse_HUGU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 600 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "You have used a higher level item of the same kind. Please try again later" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	AddState( role , role , STATE_NVER , statelv , statetime )
end 
-------------------��ʽĦ����װ����
function ItemUse_MOLIBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 4 empty inventory slots to open the Chest")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 12 )
	if rad == 1 then
	GiveItem ( role , 0 , 5107  , 1 , 4 ) 
	GiveItem ( role , 0 , 5108  , 1 , 4 ) 
	GiveItem ( role , 0 , 5109  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5111  , 1 , 4 ) 
	GiveItem ( role , 0 , 5112  , 1 , 4 ) 
	GiveItem ( role , 0 , 5113  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5115  , 1 , 4 ) 
	GiveItem ( role , 0 , 5116  , 1 , 4 ) 
	GiveItem ( role , 0 , 5117  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5119  , 1 , 4 ) 
	GiveItem ( role , 0 , 5120  , 1 , 4 ) 
	GiveItem ( role , 0 , 5121  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5123  , 1 , 4 ) 
	GiveItem ( role , 0 , 5124  , 1 , 4 ) 
	GiveItem ( role , 0 , 5125  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5127  , 1 , 4 ) 
	GiveItem ( role , 0 , 5128  , 1 , 4 ) 
	GiveItem ( role , 0 , 5129  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5130  , 1 , 4 ) 
	GiveItem ( role , 0 , 5131  , 1 , 4 ) 
	GiveItem ( role , 0 , 5132  , 1 , 4 )
	GiveItem ( role , 0 , 5133  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5134  , 1 , 4 ) 
	GiveItem ( role , 0 , 5135  , 1 , 4 ) 
	GiveItem ( role , 0 , 5136  , 1 , 4 )
	GiveItem ( role , 0 , 5137  , 1 , 4 )
	elseif rad == 9 then
	GiveItem ( role , 0 , 5138  , 1 , 4 ) 
	GiveItem ( role , 0 , 5139  , 1 , 4 ) 
	GiveItem ( role , 0 , 5140  , 1 , 4 )
	GiveItem ( role , 0 , 5141  , 1 , 4 )
	elseif rad == 10 then
	GiveItem ( role , 0 , 5143  , 1 , 4 ) 
	GiveItem ( role , 0 , 5144  , 1 , 4 ) 
	GiveItem ( role , 0 , 5145  , 1 , 4 ) 
	elseif rad == 11 then
	GiveItem ( role , 0 , 5147  , 1 , 4 ) 
	GiveItem ( role , 0 , 5148  , 1 , 4 ) 
	GiveItem ( role , 0 , 5149  , 1 , 4 )
	elseif rad == 12 then
	GiveItem ( role , 0 , 5151  , 1 , 4 ) 
	GiveItem ( role , 0 , 5152  , 1 , 4 ) 
	GiveItem ( role , 0 , 5153  , 1 , 4 )
	end
	--local cha_name = GetChaDefaultName ( role ) 
	--local message = cha_name.." opens Apparel Chest and obtain 1 apparel set"   
	--Notice ( message )
end

function ItemUse_IDBOX(role, Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local cha_name = GetChaDefaultName ( role ) 
	local count = 1
	
	if lv < 60 then
		SystemNotice( role ,"Currently lower then Lv 60. Item usage failed!")
		UseItemFailed ( role )	
	else
		SystemNotice(role,"Event have ended, Thank You for your participation. Please refer to Pirate King Online official website for future events!")
	end
end 

------
-- ����� ����� ����� ID=2816
------
function ItemUse_HonorPoint (role, Item )
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
	if HonorBook_Num < 1 then
		SystemNotice( role , "� ��� ��� ������ ������")
		return 0
	end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
	local HonorPoint_X=HonorPoint+100
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
end

------
-- ����� ������� ����� ID=2951
------
function ItemUse_FightingPoint (role, Item )
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
	if HonorBook_Num < 1 then
		SystemNotice( role , "� ��� ��� ������ ������")
		return 0
	end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local FightingPoint=GetItemAttr ( Book2 , ITEMATTR_MAXENERGY)
	local FightingPoint_X=FightingPoint+10
	SetItemAttr ( Book2 , ITEMATTR_MAXENERGY,FightingPoint_X)
end

----------------------------[[��ζ����]]--
function ItemUse_MWHJ ( role , Item )  
	local el_exp = GetChaAttr(role, ATTR_CEXP)
	local exp1=el_exp
	local charLv=Lv ( role )
	local exp_resume = 5000
	local	exp_resume_1= 100
	el_exp = el_exp + exp_resume
	 if charLv>=80 then	
		el_exp = exp1 + exp_resume_1
	end
	SetCharaAttr(el_exp, role, ATTR_CEXP) 
end 
------------------------ʥ�����
function ItemUse_SDDC ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )----------��ǰ�ȼ�����
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3  +  Exp_star + 10
	local dif_exp_thalf_b = dif_exp_thalf - DEXP[charLv+1]
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.01+Exp_star ----------------
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	elseif charLv>=1 and charLv<=9 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_five )
	elseif charLv>=10 and charLv<=29 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_three )
	elseif charLv>=30 and charLv<=59 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=60 and charLv<=75 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_half )
	elseif charLv>=76 and charLv<=85 and charLv~=79  then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b<=0 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b>0 then 
			dif_exp_thalf = dif_exp_thalf_b*0.02 + DEXP[charLv+1]
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv>=86 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )-------------
		--SystemNotice( role , "Players above Lv 86 will obtain 1% experience upon usage" )--------------
	end
end
------------------------------------�����ٻ�ȯ--˫������ĸ��ٻ�ȯ
function ItemUse_GWZHQ ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=3 then
		SystemNotice(role ,"Not enough slots. You need at least 4 empty slots. Failed to open Posh Christmas Box")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2888  , 1 , 4) 
	GiveItem ( role , 0 , 2889  , 1 , 4)
	GiveItem ( role , 0 , 2890  , 1 , 4)
	GiveItem ( role , 0 , 2891  , 1 , 4)
end
---------------------------------���ٻ�ȯ--˫���ٻ��𼦳���
function ItemUse_HJZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Not usable on the sea." )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "Max of limit of 5 pets reached. Please try again later!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =930     -------------------ûë��
	local Refresh = 1800					--����ʱ�䣬�뵥λ
	local life = 1800000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

------------------------------��¹�ٻ�ȯ--˫���ٻ���¹

function ItemUse_MLZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Not usable on the sea." )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "Max of limit of 5 pets reached. Please try again later!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =931-----------------------��¹
	local Refresh = 3600					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end
-----------------------------------ѩ���ٻ�ȯ--˫���ٻ�ѩ��
function ItemUse_XRZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Not usable on the sea." )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "Max of limit of 5 pets reached. Please try again later!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =932-----------------------------ʥ������
	local Refresh = 7200					--����ʱ�䣬�뵥λ
	local life = 7200000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

--------------------------------------------------ʥ�������ٻ�ȯ--˫���ٻ�ʥ������

function ItemUse_SDZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Not usable on the sea." )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "Max of limit of 5 pets reached. Please try again later!" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =929-----------------------------ʥ������
	local Refresh = 10800					--����ʱ�䣬�뵥λ
	local life = 10800000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end
---------------------------------------------ʥ�������--˫�����һϵ�е���
function ItemUse_SDDLB ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=5 then
		SystemNotice(role ,"You require at least 6 empty inventory slots. Failed to open Christmas Box.")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2894  , 1 , 4) 
	GiveItem ( role , 0 , 2893  , 10 , 4) 
	GiveItem ( role , 0 , 2889  , 1 , 4) 
	GiveItem ( role , 0 , 2890 , 1 , 4) 
	GiveItem ( role , 0 , 2891  , 1 , 4) 
	GiveItem ( role , 0 , 2896  , 99 , 4) 
end


--ID2446	������� �� ������� (������ ��������)
function TW_Ticket_Script1(role, Item )
	local i = CheckBagItem(role,2446)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2446,1)
			if j == 1 then
				GoTo( role,  2816, 3255, "darkblue")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID7706	������� � �������
function TW_Ticket_Kraken(role, Item )
	local i = CheckBagItem(role,7706)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,7706,1)
			if j == 1 then
				GoTo( role, 368, 164, "jialebi")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID2447	������� �� ������ ��������
function TW_Ticket_Script2(role, Item )
	local i = CheckBagItem(role,2447)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2447,1)
			if j == 1 then
				GoTo( role,  609 , 624 , "jialebi")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--------------------------------------------------------̨���Ʊ3
function TW_Ticket_Script3(role, Item )
	local i = CheckBagItem(role,2491)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2491,1)
			if j == 1 then
				GoTo( role,  1080 , 210 , "jialebi" )
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--ID2893	���������� ���������� �������
function ItemUse_JMSDBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Not enough slots. Fail to open Posh Christmas Box")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 

	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." opens a Posh Christmas Box and obtained "..itemname  
			Notice ( message )
		end
	end
end

--ID2304	���������� ���������
function ItemUse_XNLP( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0
	if CheckDateNum >= 10122  and CheckDateNum <= 10123 then
		ItemUse_XINBOX ( role , Item )	
	end
end
--���������� � ID2304	���������� ���������
function ItemUse_XINBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory slot. Usage of Grandiose Salute failed.")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 

	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." uses Grandiose Salute and obtained "..itemname  
			Notice ( message )
		end
	end
end

-------------------���걦��
function ItemUse_XNBOX( role , Item )
		
	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if lv < 40 then
		SystemNotice( role ,"Currently lower than Lv 40. Unable to use item!")
		UseItemFailed ( role )	
	return
	end
	if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 1 free slot to open chest")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 30000 )
	if  el>=29700 and el<30000 then
	GiveItem ( role , 0 , 2240  , 1 , 4 ) 
	elseif el>=28700 and el<29700 then
	GiveItem ( role , 0 , 2237  , 1 , 4 ) 
	elseif el>=25700 and el<28700 then
	GiveItem ( role , 0 , 2239  , 1 , 4 ) 
	elseif el>=15700 and el<25700 then
	GiveItem ( role , 0 , 2241  , 1 , 4 )
	else
	local EID = math.random ( 2242, 2245 )
	GiveItem ( role , 0 , EID  , 1 , 4 ) 	
	end
end

------------------------------------���ַ�
function ItemUse_SZF ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <1 then
		SystemNotice(role ,"Unable to use Pirate Voucher 8. Requires at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2306  , 1 , 4)
	local cha_name = GetChaDefaultName ( role ) 
			local message ="Congratulations" ..cha_name.."Obtained 3k RMB worth of IPOD prizes" 
			Notice ( message )
	
end
----------------------------------------------ʯͷ��
function ItemUse_ShiTouJi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"To open a Chest requires 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , STONE_ID  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID = GetItemID ( Item_newJL )		
	if STONE_LV>8 then
		STONE_LV=8
	end
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_BaoshiLV , STONE_LV )
	local cha_name = GetChaDefaultName ( role )
	LG( "star_stonebox" ,cha_name, STONE_ID , STONE_LV )
end

-------------------��ϰ��ɳ��Lv1
function ItemUse_ShaBao1(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Training in Safe Zone? Dream on!" )
		UseItemFailed ( role )
       return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 937
       local Refresh = 1900000						  
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end


-------------------��ϰ��ɳ��Lv2
function ItemUse_ShaBao2(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Training in Safe Zone? Dream on!" )
		UseItemFailed ( role )
       return
	end
		    local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 938
       local Refresh = 1900000						  
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end


-------------------��ϰ��ɳ��Lv3

function ItemUse_ShaBao3(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Training in Safe Zone? Dream on!" )
		UseItemFailed ( role )
       return
	end
		    local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 939
       local Refresh = 1900000						  
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh , role )
		SetChaLifeTime( new, life )
end


-------------------��ϰ��ɳ��Lv4
function ItemUse_ShaBao4(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Training in Safe Zone? Dream on!" )
		UseItemFailed ( role )
       return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 940
       local Refresh = 1900000						  
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end


-------------------��ϰ��ɳ��Lv5
function ItemUse_ShaBao5(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Training in Safe Zone? Dream on!" )
		UseItemFailed ( role )
       return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 941
       local Refresh = 1900000						  
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end

------------------а������Lv1
function ItemUse_FaSheng1(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		  SystemNotice( role , "Summon a monster in a safe zone? Please be considerate!" )
		  UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,8 )
	local MonsterID = 0
--	local Monster_GetID = {}
--		Monster_GetID[1] = 841
--		Monster_GetID[2] = 842
--		Monster_GetID[3] = 843
--		Monster_GetID[4] = 844
--		Monster_GetID[5] = 845
--		Monster_GetID[6] = 846
--		Monster_GetID[7] = 229
--		Monster_GetID[8] = 274
--        

	  if radID == 1   then
		   MonsterID = 841
		   
	  elseif radID == 2 then
		   MonsterID = 842
	  
	  elseif radID == 3 then
		   MonsterID = 843

	  elseif radID == 4 then
		   MonsterID = 843

	  elseif radID == 5 then
		   MonsterID = 845
	  elseif radID == 6 then
		   MonsterID = 846
	  elseif radID == 7 then
		   MonsterID = 229
	  elseif radID == 8 then
		   MonsterID = 274

	  end
		
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
       local Refresh = 3700000					 --����ʱ�䣬�뵥λ
		local life =  3600000					--����ʱ�䣬���뵥λ
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
		SetChaLifeTime( new, life )
end
------------------а������Lv2

function ItemUse_FaSheng2(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
		  SystemNotice( role , "Summon a monster in a safe zone? Please be considerate!" )
		  UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,15 )
	local MonsterID = 0
--	local Monster_GetID = {}
--
--       Monster_GetID[1] = 847      
--		Monster_GetID[2] = 848
--		Monster_GetID[3] = 849
--		Monster_GetID[4] = 850
--		Monster_GetID[5] = 851
--		Monster_GetID[6] = 852
--		Monster_GetID[7] = 211
--		Monster_GetID[8] = 706
--		Monster_GetID[9] = 673
--		Monster_GetID[10] = 690
--		Monster_GetID[11] = 691
--		Monster_GetID[12] = 692
--		Monster_GetID[13] = 693
--		Monster_GetID[14] = 106
--		Monster_GetID[15] = 289

		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
		  MonsterID = 847
	  elseif radID == 2 then
		  MonsterID = 848
	  elseif radID == 3 then 
		  MonsterID = 849
	  elseif radID == 4 then 
		  MonsterID = 850
 elseif radID == 5 then
		  MonsterID = 851
		elseif radID == 6 then
		  MonsterID = 852
		elseif radID == 7 then
		  MonsterID = 211
		elseif radID == 8 then
		  MonsterID = 706
		elseif radID == 9 then
		  MonsterID = 673
		elseif radID == 10 then
		  MonsterID = 690
		elseif radID == 11 then
		  MonsterID = 691
		elseif radID == 12 then
		  MonsterID = 692
		elseif radID == 13 then
		  MonsterID = 693
		elseif radID == 14 then
		  MonsterID = 106
		elseif radID == 15 then
		  MonsterID = 289
	  end
		local Refresh = 3700000						  --����ʱ�䣬�뵥λ
		local life = 3600000					--����ʱ�䣬���뵥λ
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end
------------------а������Lv3
function ItemUse_FaSheng3(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
		  SystemNotice( role , "Summon a monster in a safe zone? Please be considerate!" )
		  UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,7 )
	local MonsterID = 0
--	local Monster_GetID = {}
--		Monster_GetID[1] = 757
--		Monster_GetID[2] = 679
--		Monster_GetID[3] = 678
--		Monster_GetID[4] = 707
--		Monster_GetID[5] = 708
--		Monster_GetID[6] = 776
--		Monster_GetID[7] = 74
		 
       local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
		   MonsterID = 757       
	  elseif radID == 2 then
		   MonsterID = 679        
	  elseif radID == 3 then  
		   MonsterID = 678
	  elseif radID == 4 then  
		   MonsterID = 707      
	  elseif radID == 5 then
		   MonsterID = 708        
 elseif radID == 6 then
		   MonsterID = 776
 elseif radID == 7 then
		   MonsterID = 74   
	  end
		local Refresh = 7300000						  --����ʱ�䣬�뵥λ
		local life = 7200000     				--����ʱ�䣬���뵥λ
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end
------------------а������Lv4
function ItemUse_FaSheng4(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
		  SystemNotice( role , "Summon a monster in a safe zone? Please be considerate!" )
		  UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,5 )
	local MonsterID = 0
	local Refresh = 0
	local life = 0
--	local Monster_GetID = {}
--		Monster_GetID[1] = 952
--		Monster_GetID[2] = 805
--		Monster_GetID[3] = 807
--		Monster_GetID[4] = 786
--		Monster_GetID[5] = 788
--		
       local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
		  MonsterID = 952        
	  elseif radID == 2 then
		  MonsterID = 805        
	  elseif radID == 3 then  
		  MonsterID = 807
	  elseif radID == 4 then  
		  MonsterID = 786      
	  elseif radID == 5 then
		  MonsterID = 788
	  end
		   
		   if MonsterID == 952 then 
	 Refresh = 10900000
	 life = 10800000
		   else
			Refresh = 7300000     					  --����ʱ�䣬�뵥λ
			life = 7200000					--����ʱ�䣬���뵥λ
		   end
	 local new = CreateChaX( MonsterID , x , y , 145 , Refresh ,role)
		SetChaLifeTime( new, life )
end

--------------------а������Lv5
--function ItemUse_FaSheng5(role,Item)
--local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "���������� ������������ � ����" )
--		UseItemFailed ( role )
--		return
--	end
--        local reg = 0
--		  reg =IsChaInRegion( role, 2 )
--	if reg == 1 then	
--		  SystemNotice( role , "Summon a monster in a safe zone? Please be considerate!" )
--		  UseItemFailed ( role )
--	return
--	end
--	local radID = math.random ( 1,30 )
--	local MonsterID = 0
--	local Refresh = 0
--	local life = 0
--	local Monster_GetID = {}
--		Monster_GetID[1] = 229 
--		Monster_GetID[2] = 211
--		Monster_GetID[3] = 99
--		Monster_GetID[4] = 673
--		Monster_GetID[5] = 786
--		Monster_GetID[6] = 757
--		Monster_GetID[7] = 263
--		Monster_GetID[8] = math.random ( 678 , 679 )
--       Monster_GetID[9] = math.random ( 841 , 852 )
--		Monster_GetID[10] = math.random ( 690 , 693 )
--		Monster_GetID[11] = math.random ( 706, 708 )
--		Monster_GetID[12] = 952
--		Monster_GetID[13] = 805
--		Monster_GetID[14] = 807
--		
--       local x, y = GetChaPos(role)
--		local x_move=5
--		local y_move=5
--		x=x_move+x
--		y=y_move+y
--	  if radID == 1 or  radID ==2 then
--		  MonsterID = Monster_GetID[8]        ----------5%
--	  elseif radID == 3 or  radID ==4 then
--		  MonsterID = 786        
--	  elseif radID == 5 or  radID ==6 then  
--		  MonsterID = 673
--	  elseif radID == 7 or  radID ==8 then  
--		  MonsterID = 757      
--	  elseif radID == 9 or  radID ==10 then
--		  MonsterID = 263----------10%
-- elseif radID == 11 or  radID ==12 then
--		  MonsterID = 211
-- elseif radID == 13 or  radID ==14 then
--		  MonsterID = 99
--	  elseif radID == 15 or  radID ==16 then
--		  MonsterID = 229
--	  elseif radID == 17 or  radID ==18 or  radID ==19 then   ----------15%
--     MonsterID = Monster_GetID[9]
--	  elseif radID == 20 or  radID ==21 then
--		  MonsterID = Monster_GetID[10]
-- elseif radID == 22 or radID ==23 or radID ==24 then
--		  MonsterID = Monster_GetID[11]
--	  elseif radID == 25 or  radID ==26 then
--		  MonsterID = Monster_GetID[12]
--	  elseif radID == 27 or  radID ==28 then
--		  MonsterID = Monster_GetID[13]
-- elseif radID == 29 or  radID ==30 then
--		  MonsterID = Monster_GetID[14]
--	  end
--		   
--		   if MonsterID == Monster_GetID[12] then 
--	 Refresh = 10900000
--	 life = 10800000
--		   else
--			Refresh = 7300000     					  --����ʱ�䣬�뵥λ
--			life = 7200000					--����ʱ�䣬���뵥λ
--		   end
--	 local new = CreateChaX( MonsterID , x , y , 145 , Refresh ,role)
--		SetChaLifeTime( new, life )
--end

--ˮ��LV1-----------------------------------------------------------

function ItemUse_SL1 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Can only be used on the sea." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
       return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 1200
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=1200
		   y_move=-1200
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-1000
	 elseif fx_move == 4 then
		   x_move=-1000
		   y_move=-1000
	 elseif fx_move == 5 then
		   x_move=1000
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-1000
		   y_move=1000
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=1000
	 else  x_move=1000
		   y_move=1000
	 end
		  x =x_move + x
		  y =y_move + y

	local MonsterID = 942
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end
--ˮ��LV2-----------------------------------------------------------

function ItemUse_SL2 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Can only be used on the sea." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
       return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 1200
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=1200
		   y_move=-1200
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-1000
	 elseif fx_move == 4 then
		   x_move=-1000
		   y_move=-1000
	 elseif fx_move == 5 then
		   x_move=1000
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-1000
		   y_move=1000
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=1000
	 else  x_move=1000
		   y_move=1000
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 943
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end
--ˮ��LV3-----------------------------------------------------------

function ItemUse_SL3 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Can only be used on the sea." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
       return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 1200
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=1200
		   y_move=-1200
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-1000
	 elseif fx_move == 4 then
		   x_move=-1000
		   y_move=-1000
	 elseif fx_move == 5 then
		   x_move=1000
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-1000
		   y_move=1000
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=1000
	 else  x_move=1000
		   y_move=1000
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 944
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end
--ˮ��LV4-----------------------------------------------------------

function ItemUse_SL4 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Can only be used on the sea." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
       return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 1200
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=1200
		   y_move=-1200
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-1000
	 elseif fx_move == 4 then
		   x_move=-1000
		   y_move=-1000
	 elseif fx_move == 5 then
		   x_move=1000
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-1000
		   y_move=1000
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=1000
	 else  x_move=1000
		   y_move=1000
	 end
		  x =x_move + x
		  y =y_move + y

	local MonsterID = 945
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end
--ˮ��LV5-----------------------------------------------------------

function ItemUse_SL5 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Can only be used on the sea." )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
       return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 1200
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=1200
		   y_move=-1200
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-1000
	 elseif fx_move == 4 then
		   x_move=-1000
		   y_move=-1000
	 elseif fx_move == 5 then
		   x_move=1000
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-1000
		   y_move=1000
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=1000
	 else  x_move=1000
		   y_move=1000
	 end
		  x =x_move + x
		  y =y_move + y

	local MonsterID = 946
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )

	SetChaLifeTime( new, life )
end

--�Ա�����LV1-----------------------------------------------------------

function ItemUse_ZBML1 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
       return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 800
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=800
		   y_move=-800
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-800
	 elseif fx_move == 4 then
		   x_move=-800
		   y_move=-800
	 elseif fx_move == 5 then
		   x_move=800
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-800
		   y_move=800
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=800
	 else  x_move=800
		   y_move=800
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 947
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end
--�Ա�����LV2-----------------------------------------------------------

function ItemUse_ZBML2 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
       return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 800
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=800
		   y_move=-800
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-800
	 elseif fx_move == 4 then
		   x_move=-800
		   y_move=-800
	 elseif fx_move == 5 then
		   x_move=800
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-800
		   y_move=800
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=800
	 else  x_move=800
		   y_move=800
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 948
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end
--�Ա�����LV3-----------------------------------------------------------

function ItemUse_ZBML3 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
       return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 800
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=800
		   y_move=-800
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-800
	 elseif fx_move == 4 then
		   x_move=-800
		   y_move=-800
	 elseif fx_move == 5 then
		   x_move=800
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-800
		   y_move=800
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=800
	 else  x_move=800
		   y_move=800
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 949
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end
--�Ա�����LV4-----------------------------------------------------------

function ItemUse_ZBML4 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
       return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 800
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=800
		   y_move=-800
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-800
	 elseif fx_move == 4 then
		   x_move=-800
		   y_move=-800
	 elseif fx_move == 5 then
		   x_move=800
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-800
		   y_move=800
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=800
	 else  x_move=800
		   y_move=800
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 950
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end
--�Ա�����LV5-----------------------------------------------------------

function ItemUse_ZBML5 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
       return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 800
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=800
		   y_move=-800
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-800
	 elseif fx_move == 4 then
		   x_move=-800
		   y_move=-800
	 elseif fx_move == 5 then
		   x_move=800
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-800
		   y_move=800
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=800
	 else  x_move=800
		   y_move=800
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 951
	local Refresh = 700000					--����ʱ�䣬�뵥λ
	local life = 600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end

----------------------------------��Ե����
function ItemUse_LoveBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 1 free slot to open Chest of Fate")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	local count = 0
	if cha_type == 3 or cha_type == 4 then 
		   count =1
	end
	if cha_type == 1 or cha_type == 2 then
		   count =2
	end
	local el = math.random ( 1, 35 )
	if   count == 1 then
		if el==35 then
			local r1 = 0
			local r2 = 0	
			r1,r2 =MakeItem ( role , 2902  , 1 , 4 )
			local Item_girl = GetChaItem ( role , 2 , r2 )			--ȡŮ�Ե���ָ��
			local new_el=math.random ( 1, 200 )
			SetItemAttr ( Item_girl , ITEMATTR_VAL_STR , new_el )	
		else
			local el1 = math.random ( 1, 12 )
			if el1==1  then
				GiveItem ( role , 0 , 3343  , 1 , 4 ) ---------------õ�廨
			elseif el1==2 then
				GiveItem ( role , 0 , 3077  , 1 , 4 )------------�����ɿ���	
			else
				local EID = math.random ( 4264, 4273 )----------10������
				GiveItem ( role , 0 , EID  , 1 , 4 )
			end
		end
	end
	local el2= math.random ( 1, 7 )
	if   count == 2 then
			--SystemNotice(role ,"count=="..count)
		if el2==7 then
			local r1 = 0
			local r2 = 0	
				r1,r2 =MakeItem ( role , 2903  , 1 , 4 )
			local Item_boy = GetChaItem ( role , 2 , r2 )			--ȡ���Ե���ָ��
			local new_el=math.random ( 1, 1000 )
			--SystemNotice(role ,"new_el=="..new_el)
			SetItemAttr( Item_boy , ITEMATTR_VAL_STR , new_el )
		else
			local el3 = math.random ( 1, 12 )
			if el3==1  then
				GiveItem ( role , 0 , 3343  , 1 , 4 ) ---------------õ�廨
			elseif el3==2 then
				GiveItem ( role , 0 , 3077  , 1 , 4 )------------�����ɿ���	
			else
				local EID = math.random ( 4264, 4273 )----------10������
				GiveItem ( role , 0 , EID  , 1 , 4 )
			end
		end
	end
end


------------------------������䣺˫�������ݽ�ɫ�������

function ItemUse_MarryBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"you need at least 4 free slot to open Chest of Gown")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
		   GiveItem ( role , 0 , 5244  , 1 , 4 )
		   GiveItem ( role , 0 , 5245  , 1 , 4 )
		   GiveItem ( role , 0 , 5246  , 1 , 4 )
		   GiveItem ( role , 0 , 5247  , 1 , 4 )
	elseif cha_type == 4  then 
		   GiveItem ( role , 0 , 5252  , 1 , 4 )
		   GiveItem ( role , 0 , 5253  , 1 , 4 )
		   GiveItem ( role , 0 , 5254  , 1 , 4 )
		   GiveItem ( role , 0 , 5255  , 1 , 4 )
	elseif cha_type == 1 then 
		   GiveItem ( role , 0 , 5221  , 1 , 4 )
		   GiveItem ( role , 0 , 5222  , 1 , 4 )
		   GiveItem ( role , 0 , 5223  , 1 , 4 )
	elseif cha_type == 2 then 
		   GiveItem ( role , 0 , 5238  , 1 , 4 )
		   GiveItem ( role , 0 , 5239  , 1 , 4 )
		   GiveItem ( role , 0 , 5240  , 1 , 4 )
	end
end
		----------------------------------���˶������
function ItemUse_JRDQBox( role , Item )
--	local Now_Day = os.date("%d")
--	local Now_Month = os.date("%m")
--	local Now_Time = os.date("%H")
--	local NowTimeNum = tonumber(Now_Time)
--	local NowDayNum = tonumber(Now_Day)
--	local NowMonthNum = tonumber(Now_Month)
--	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
--	
--	if CheckDateNum < 021609  then
--		SystemNotice ( role , "Please use the item between 16th Febuary 9.00am and 16th Febuary 24.00pm" )
--		UseItemFailed ( role )
--		return
--	end
--	
--	if CheckDateNum > 021700 then
--		SystemNotice ( role , "Santa Claus has left. Please wait for next year" )
--		UseItemFailed ( role )
--		return
--	end
--
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 10 then
		SystemNotice(role ,"To open Gift of the Beauty requires at least 10 empty inventory slots")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	 if cha_type ==1 or cha_type ==2 then
	 SystemNotice(role ,"Gift of the Beauty can only be opened by female")
	UseItemFailed ( role )
		return
	end 
	
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 3343  , 1 , 4 )----------õ�廨
	elseif  el>=21 and el<=40 then
	GiveItem ( role , 0 , 3354  , 1 , 4 )
	GiveItem ( role , 0 , 3355  , 1 , 4 )
	GiveItem ( role , 0 , 3356  , 1 , 4 )
	GiveItem ( role , 0 , 3357  , 1 , 4 )
	GiveItem ( role , 0 , 3358  , 1 , 4 )
	GiveItem ( role , 0 , 3359  , 1 , 4 )----------������ 
	elseif el>=41 and el<=45 then
	GiveItem ( role , 0 , 937  , 1 , 4 ) -----------��ʹ֮��
	elseif el>=46 and el<=65 then
	GiveItem ( role , 0 , 4264  , 1 , 4 )
	GiveItem ( role , 0 , 4265  , 1 , 4 )
	GiveItem ( role , 0 , 4266  , 1 , 4 )
	GiveItem ( role , 0 , 4267  , 1 , 4 )
	GiveItem ( role , 0 , 4268  , 1 , 4 )
	GiveItem ( role , 0 , 4269  , 1 , 4 )
	GiveItem ( role , 0 , 4270  , 1 , 4 )
	GiveItem ( role , 0 , 4271  , 1 , 4 )
	GiveItem ( role , 0 , 4272  , 1 , 4 )
	GiveItem ( role , 0 , 4273  , 1 , 4 )---------------10������
	elseif el>=66 and el<=75 then
	GiveItem ( role , 0 , 3094  , 3 , 4 )------------Ŭ��������3��
	elseif el>=76 and el<=85 then
	GiveItem ( role , 0 , 855  , 10 , 4 ) -----------����Ӳ��
	elseif el>=86 and el<87 then
	GiveItem ( role , 0 , 1012  , 1 , 4 ) -----------����֮��1��
	elseif el>=87 and el<89 and cha_type == 3  then 
	GiveItem ( role , 0 , 5244  , 1 , 4 )
	GiveItem ( role , 0 , 5245  , 1 , 4 )
	GiveItem ( role , 0 , 5246  , 1 , 4 )
	GiveItem ( role , 0 , 5247  , 1 , 4 ) -----------����װ
	elseif el>=89 and el<=90 and cha_type == 4 then
	GiveItem ( role , 0 , 5252  , 1 , 4 )
	GiveItem ( role , 0 , 5253  , 1 , 4 )
	GiveItem ( role , 0 , 5254  , 1 , 4 )
	GiveItem ( role , 0 , 5255  , 1 , 4 ) -----------����װ
	else
	local EID = math.random ( 1808, 1811 )----------������
	GiveItem ( role , 0 , EID  , 1 , 4 )
	end
end


----------------------------------�ſ��������
function ItemUse_CJDQBox( role , Item )

--	local Now_Day = os.date("%d")
--	local Now_Month = os.date("%m")
--	local Now_Time = os.date("%H")
--	local NowTimeNum = tonumber(Now_Time)
--	local NowDayNum = tonumber(Now_Day)
--	local NowMonthNum = tonumber(Now_Month)
--	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
--	
--	if CheckDateNum < 021609  then
--		SystemNotice ( role , "Please use the item between 16th Febuary 9.00am and 16th Febuary 24.00pm" )
--		UseItemFailed ( role )
--		return
--	end
--	
--	if CheckDateNum > 021700 then
--		SystemNotice ( role , "Please wait for next year" )
--		UseItemFailed ( role )
--		return
--	end
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 10 then
		SystemNotice(role ,"you need at least 10 free slot to open Gift of the Hunk")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	 if cha_type ==3 or cha_type ==4 then
		SystemNotice(role ,"Gift of the Hunk can only be opened by male characters")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 3077  , 1 , 4 )----------�����ɿ���
	elseif  el>=21 and el<=40 then
	GiveItem ( role , 0 , 3354  , 1 , 4 )
	GiveItem ( role , 0 , 3355  , 1 , 4 )
	GiveItem ( role , 0 , 3356  , 1 , 4 )
	GiveItem ( role , 0 , 3357  , 1 , 4 )
	GiveItem ( role , 0 , 3358  , 1 , 4 )
	GiveItem ( role , 0 , 3359  , 1 , 4 )----------������ 
	elseif el>=41 and el<=45 then
	GiveItem ( role , 0 , 0936  , 1 , 4 ) -----------����
	elseif el>=46 and el<=65 then
	GiveItem ( role , 0 , 4264  , 1 , 4 )
	GiveItem ( role , 0 , 4265  , 1 , 4 )
	GiveItem ( role , 0 , 4266  , 1 , 4 )
	GiveItem ( role , 0 , 4267  , 1 , 4 )
	GiveItem ( role , 0 , 4268  , 1 , 4 )
	GiveItem ( role , 0 , 4269  , 1 , 4 )
	GiveItem ( role , 0 , 4270  , 1 , 4 )
	GiveItem ( role , 0 , 4271  , 1 , 4 )
	GiveItem ( role , 0 , 4272  , 1 , 4 )
	GiveItem ( role , 0 , 4273  , 1 , 4 )---------------10������
	elseif el>=66 and el<=75 then
	GiveItem ( role , 0 , 3094  , 3 , 4 )------------Ŭ��������3��
	elseif el>=76 and el<=85 then
	GiveItem ( role , 0 , 855  , 10 , 4 ) -----------����Ӳ��
	elseif el>=86 and el<87 then
	GiveItem ( role , 0 , 0862  , 1 , 4 ) -----------����1��
	elseif el>=87 and el<89 and cha_type == 1  then 
	GiveItem ( role , 0 , 5221  , 1 , 4 )
	GiveItem ( role , 0 , 5222  , 1 , 4 )
	GiveItem ( role , 0 , 5223  , 1 , 4 ) -----------ҹ����װ
	elseif el>=89 and el<=90 and cha_type == 2 then
	GiveItem ( role , 0 , 5238  , 1 , 4 )
	GiveItem ( role , 0 , 5239  , 1 , 4 )
	GiveItem ( role , 0 , 5240  , 1 , 4 )-----------�ڽ�װ
	else
	local EID = math.random ( 1808, 1811 )----------������
	GiveItem ( role , 0 , EID  , 1 , 4 )
	end
end

--ID2906	��������� ��������
function ItemUse_XTBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
		
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory slots. Failed to use Wedding Candy")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 

	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local itemname = GetItemName ( ItemId ) 
			local cha_name = GetChaDefaultName ( role ) 
			local message = cha_name.." uses a Wedding Candy and obtained "..itemname  
			Notice ( message )
		end
	end
end

-------------------��������
function ItemUse_HQBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 free slots to open Wedding Gift Parcel")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 1012  , 1 , 4 ) -------------����֮��
	elseif el>=21 and el<=40 then
	GiveItem ( role , 0 , 1016  , 1 , 4 ) ---------------Ů��С��
	elseif el>=41 and el<60 then
	GiveItem ( role , 0 , 0333  , 1 , 4 ) ----------------�߼���ʯ�һ�ȯ
	elseif el>=61 and el<=100 then
	GiveItem ( role , 0 , 0273  , 1 , 4 )-----------------һ�Ƚ�	
	end
end

-----------------------------------���������䣺��������ӥ��ʯ������ʯ������֮��Ů��С��

function ItemUse_XYPIGBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 4 empty slots to open Lucky Piggy Chest")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=4 then
	GiveItem ( role , 0 , 1012  , 1 , 4 ) -------------����֮��
	elseif el==5  then
	GiveItem ( role , 0 , 1016  , 1 , 4 ) ---------------Ů��С��
	elseif el>=6 and el<=30 then
	GiveItem ( role , 0 , 0861  , 1 , 4 ) ----------------ӥ��ʯ
	elseif el>=31 and el<=60 then
	GiveItem ( role , 0 , 885  , 1 , 4 )-----------------����ʯ
	elseif el>=61 and el<=75 then
	GiveItem ( role , 0 , 0860  , 1 , 4 ) ---------------����ʯ
	elseif el>=76 and el<=88 then
	GiveItem ( role , 0 , 0862  , 1 , 4 ) ----------------����
	elseif el>=89 and el<=100 then
	GiveItem ( role , 0 , 0863  , 1 , 4 )-----------------����
	end
end


-----------------------------ѹ�����ѹ���ֻ���ڳ�Ϧҹ��2��17����23:00--2��18���賿���㣩�򿪲Ż���Ч
----------------------------------------------------------------------------------ѹ���
function ItemUse_YSB( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 1 empty slots to open Auspicious Bag")
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0
	if CheckDateNum >= 21723  and CheckDateNum <= 21801 then
		ItemUse_YSBOX ( role , Item )
	else 
		SystemNotice(role ,"It is not time yet. Do not try to cheat!")
		UseItemFailed ( role )
		return
	end
end
function ItemUse_YSBOX ( role , Item )
	local el = math.random ( 1, 1000 )
	if  el>=1 and el<=5 then
		GiveItem ( role , 0 , 1012  , 1 , 4 ) -------------����֮��        0.5
	elseif el>=6 and el<=10 then
		GiveItem ( role , 0 , 1016  , 1 , 4 ) ---------------Ů��С��       0.5
	elseif el>=11 and el<=20 then
		GiveItem ( role , 0 , 0860  , 1 , 4 ) ---------------����1
	elseif el>=21 and el<=30 then
		GiveItem ( role , 0 , 0861  , 1 , 4 ) ----------------ӥ��ʯ     1
	elseif el>=31 and el<40 then
		GiveItem ( role , 0 , 0862  , 1 , 4 ) ----------------����       1
	elseif el>=41 and el<=50 then
		GiveItem ( role , 0 , 0863  , 1 , 4 )-----------------����       1
	elseif el>=51 and el<=270 then
		GiveItem ( role , 0 , 855  , 99 , 4 )-----------------����Ӳ��       22
	elseif el>=271 and el<=500 then
		GiveItem ( role , 0 , 0227  , 5 , 4 )-----------------�ػ���������    23
	elseif el>=501 and el<=750 then
		GiveItem ( role , 0 , 3096  , 3 , 4 )-----------------�Ƹ�������3��   25
	elseif el>=751 and el<=1000 then
		GiveItem ( role , 0 , 3094  , 3 , 4 )-----------------Ŭ��������3��   25
	end
end
function ItemUse_Hadisi( role , Item )		----------����˹����
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 empty slots to open Chest of Hardin")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2817  , 1 , 4 )
	GiveItem ( role , 0 , 2818  , 1 , 4 )
	GiveItem ( role , 0 , 2819  , 1 , 4 )
end
function ItemUse_MG ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	end 
	hp_resume = 35  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 
function ItemUse_Anhei( role , Item )		----------���ں���
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 empty slots to open Chest of Darkness")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2820  , 1 , 4 )
	GiveItem ( role , 0 , 2821  , 1 , 4 )
	GiveItem ( role , 0 , 2822  , 1 , 4 )
end
function ItemUse_Diyu( role , Item )		----------��������
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Chest of Abaddon requires at least 3 empty inventory slots")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2823  , 1 , 4 )
	GiveItem ( role , 0 , 2824  , 1 , 4 )
	GiveItem ( role , 0 , 2825  , 1 , 4 )
end
function ItemUse_Xiuluo( role , Item )		----------��������
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 free slots to open Chest of Asura")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2826  , 1 , 4 )
	GiveItem ( role , 0 , 2827  , 1 , 4 )
	GiveItem ( role , 0 , 2828  , 1 , 4 )
end
function ItemUse_Youming( role , Item )	----------��ڤ����
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 empty slots to open Chest of Abyss")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2829  , 1 , 4 )
	GiveItem ( role , 0 , 2830  , 1 , 4 )
	GiveItem ( role , 0 , 2831  , 1 , 4 )
end
function ItemUse_Minghe( role , Item )		----------ڤ��С��
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 empty inventory slots to open Chest of Styx")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2832  , 1 , 4 )
	GiveItem ( role , 0 , 2833  , 1 , 4 )
	GiveItem ( role , 0 , 2834  , 1 , 4 )
end
function ItemUse_Sishen( role , Item )		----------�����ʬ��
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"To open the Carcass of Death requires at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	local star_rad=math.random ( 1, 2 )
	if lv < 40 then
		SystemNotice(role ,"Currently lower than Lv 40. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 9 then 
		if star_rad==1 then
			GiveItem ( role , 0 , 2331  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2332  , 1 , 4 ) 
		end
	elseif job == 8 then   
		if star_rad==1 then
			GiveItem ( role , 0 , 2333  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2334  , 1 , 4 ) 
		end
	elseif job == 12 then 
		local eleven_rad=math.random ( 1, 4 )
		if eleven_rad==1 then
			GiveItem ( role , 0 , 2337  , 1 , 4 ) 
		elseif eleven_rad==2 then
			GiveItem ( role , 0 , 2338  , 1 , 4 ) 
		elseif eleven_rad==3 then
			GiveItem ( role , 0 , 2339  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2340  , 1 , 4 ) 
		end
	elseif job == 16 then 
		if star_rad==1 then
			GiveItem ( role , 0 , 2335  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2336  , 1 , 4 ) 
		end
	elseif job == 13 then    
		if star_rad==1 then
			GiveItem ( role , 0 , 2341  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2342  , 1 , 4 ) 
		end
	elseif job == 14 then    
		if star_rad==1 then
			GiveItem ( role , 0 , 2343  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2344  , 1 , 4 ) 
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after second class advancement!")
		UseItemFailed ( role )	
	end
end
function ItemUse_Zhenheilong( role , Item )	----------���������
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"You need at least 4 empty slots to open Rightful Chest of Black Dragon")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2367  , 1 , 16 ) 
	GiveItem ( role , 0 , 2368  , 1 , 16 ) 
	GiveItem ( role , 0 , 2369  , 1 , 16 )
        local cha_type = GetChaTypeID ( role )
	if cha_type == 4 then 
		GiveItem ( role , 0 , 2370  , 1 , 16 )		
	end
end
--�����Ĳ��Ʊ
function Jz_Script_4thDy(role, Item )
	local i = CheckBagItem(role,2844)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2844,1)
			if j == 1 then
				MoveCity(role,"Caribbean Abaddon 4")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--ID2941	����� ������������
function ItemUse_ZSCard(role, Item )
	local i = CheckBagItem(role,2941)
	local k = ChaIsBoat(role)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"����� ������������ ����� ������������ ����� 1 ��������� ���� � ����� ���������")
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2941,1)
			if j == 1 then
				SystemNotice(role, "�� ������� ��������� ����� ������������, ���������� ������� ������ ������������ � �������� ���������� �����������.")
				GiveItem ( role , 0 , 2235 , 1 , 42)
				GoTo( role,  1750 , 909 , "jialebi")
				return
			end
		end
	else
		UseItemsFailed ( role )
	end
end
-----------���������ػ����ٻ�ȯ--------------------
function ItemUse_SummonBigBOSS(role, Item )
local map_name_role = GetChaMapName ( role )
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
       return
	end
   if  map_name_role == "guildwar" then
	local x,y = GetChaPos(role)
	if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
	local MonsterID = 1007
	local Refresh = 1300					--����ʱ�䣬�뵥λ
	local life = 1200000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,1)
	end

	if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
	local MonsterID = 1008
	local Refresh = 1300					--����ʱ�䣬�뵥λ
	local life = 1200000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,2)
	end
   elseif map_name_role == "guildwar2" then 

    local x,y = GetChaPos(role)
	if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
	local MonsterID = 1007
	local Refresh = 1300					--����ʱ�䣬�뵥λ
	local life = 12600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,1)
	end

	if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
	local MonsterID = 1008
	local Refresh = 1300					--����ʱ�䣬�뵥λ
	local life = 1200000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,2)
	end
    else 
        SystemNotice( role , "This ticket can only be used in Sacred War map" )
        UseItemFailed ( role )
        return
    end

end


----------------------�����Ʊ---------------------
function ItemUse_moveDX(role, Item)
local i = CheckBagItem(role,2986)
--local k = ChaIsBoat(role)
 local Cha_Boat = 0
       Cha_Boat = GetCtrlBoat ( role )
	 if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Not usable on the sea" )
		UseItemFailed ( Cha_Boat )
		return
	 end
	 local reg = 0
		  reg =IsChaInRegion( role, 2 )
	 if reg == 1 then
		SystemNotice( role , "Unable to use in Safe Zone" )
		UseItemFailed ( role )
       return
	 end


 if GetChaGuildID(role) == 0 then
    SystemNotice( role , "You do not have a guild. Unable to use the pass" )
    UseItemFailed ( role )
    return
 end

local map_name_role = GetChaMapName ( role )
if map_name_role =="guildwar" then
	 if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 and map_name_role =="guildwar" then
			if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  305, 87,  "guildwar" )
					return
				end
			end
								 

	 elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 and map_name_role =="guildwar" then
			 if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  309, 539,  "guildwar" )
					return
				end
			end
	 
	 else
			UseItemFailed ( role )
				  
	 end

elseif map_name_role =="guildwar2" then

	 if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 and map_name_role =="guildwar2"  then
				 if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  305, 87,  "guildwar2" )
					return
				end
			end
			
	 elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 and map_name_role =="guildwar2"  then
			 if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					 MoveTo( role,  309, 539,  "guildwar2" )
					return
				end
			end
	 
	 else
			UseItemFailed ( role )
		
   
end

else
        SystemNotice( role , "This ticket can only be used in Sacred War map" )
        UseItemFailed ( role )
        return
   end        
end


------------------------���򴬳����䣺˫�������ݽ�ɫ�������

function ItemUse_CZBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Aries Apparel Chest requires at least 4 empty inventory slots")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
		 
		   GiveItem ( role , 0 , 5349  , 1 , 4 )
		   GiveItem ( role , 0 , 5350  , 1 , 4 )
		   GiveItem ( role , 0 , 5351  , 1 , 4 )
	elseif cha_type == 4  then 
		   GiveItem ( role , 0 , 5352  , 1 , 4 )
		   GiveItem ( role , 0 , 5353  , 1 , 4 )
		   GiveItem ( role , 0 , 5354  , 1 , 4 )
		   GiveItem ( role , 0 , 5355  , 1 , 4 )
	elseif cha_type == 1 then 
		  
		   GiveItem ( role , 0 , 5341  , 1 , 4 )
		   GiveItem ( role , 0 , 5342  , 1 , 4 )
		   GiveItem ( role , 0 , 5343  , 1 , 4 )
	elseif cha_type == 2 then 
		   
		   GiveItem ( role , 0 , 5345  , 1 , 4 )
		   GiveItem ( role , 0 , 5346  , 1 , 4 )
		   GiveItem ( role , 0 , 5347  , 1 , 4 )
	end
end


------------------------���˽�����----------2953----------itemeffect
function ItemUse_Foolish ( role , Item )
	local charLv=Lv ( role )
	local Cha_Boat = 0
		Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Exp_el=GetChaAttr (  role , ATTR_CEXP )----------��ǰ�ȼ�����
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.03+Exp_el ----------------
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )-------------
		--SystemNotice( role , "Use April's Fool Gift to obtain 3 percent experience points" )--------------
end
---------------------------�ٻ������ػ���
function ItemUse_BYSHJZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1009
	local Refresh = 3700					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

--ID2956	����� ������� �������������� (�������)
function Sk_Script_Wyz ( role , Item )
	local sk_add = SK_WYZ 
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--ID2957	����� ������� �������������� (�������)
function Sk_Script_Bsj ( role , Item )
	local sk_add = SK_BSJ 
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--ID2958	����� ������� ������������� (��������)
function Sk_Script_Emzz ( role , Item )
	local sk_add = SK_EMZZ 
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--ID2959	����� ������� ������������� (������������)
function Sk_Script_Sssp ( role , Item )
	local sk_add = SK_SSSP 
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--ID2960	����� ������� �������������� (���������� �����)
function Sk_Script_Cyn ( role , Item )
	local sk_add = SK_CYN 
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a == 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--ID2961	����� ������� �������������� (�������)
function Sk_Script_Hlp ( role , Item )
	local sk_add = SK_HLP 
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

-------------------------Ʒ�Ƶ���
function ItemUse_NiceCake (role, Item )

	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( role , "You do not have Mark of Honor")
		UseItemFailed ( role )
		return 0
		end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
	local el_fame = GetChaAttr(role, ATTR_FAME)
	
		if HonorPoint < 27000 and el_fame < 99990001 then
		local HonorPoint_X=HonorPoint+3000
		SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
		
		local fame_resume = 9999
		el_fame = el_fame + fame_resume
		SetCharaAttr(el_fame, role, ATTR_FAME) 

		else 
		SystemNotice( role , "Your Honor or Reputation points are too high. This cake can no longer satisfied you")
		UseItemFailed ( role )
		end
end

-------------------QQ����
--function ItemUse_QQBOX( role , Item )
	
	--local cha_name = GetChaDefaultName ( role )
	--local cha_num = GetActName(role)	
	--local lv = GetChaAttr(role, ATTR_LV)
	--local Item_CanGet = GetChaFreeBagGridNum ( role )
	--if lv < 40 then
		--SystemNotice( role ,"Currently lower than Lv 40. Unable to use item!")
		--UseItemFailed ( role )	
	--return
	--end
	
	--local BorG = 0 
	--local cha_type = GetChaTypeID ( role ) 
	--if cha_type == 1  or cha_type == 2 then 
		--BorG=1
	--elseif cha_type == 3  or cha_type == 4 then
		--BorG=2
	--end
	
	--LG( "QQ" , "Player"..cha_name.."Open QQ Chest", "yes"..BorG.."character","Account is"..cha_num)
--end

----------------------------------------------�α�����
--function ItemUse_JBBOX( role , Item )
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
--	if Item_CanGet <1 then
--		SystemNotice(role ,"To open a Chest requires 1 empty slot")
--		UseItemFailed ( role )
--		return
--	end
--	local r1,r2 =MakeItem ( role , 3078  , 1 , 4 )-------���
--	local Item_el = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��
--
--	local item_old = GetChaItem2 ( role , 2 , 3066 )---------����ʹ��֤��
--
--	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------�� 	
--	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------��  
--	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------ʱ   
--	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)		-------------��   
--	
--	--SystemNotice ( role , "old_month=="..old_month )
--	--SystemNotice ( role , "old_day=="..old_day )       
--	--SystemNotice ( role , "old_hour=="..old_hour )    
--	--SystemNotice ( role , "old_miniute=="..old_miniute)
--
--	SetItemAttr(Item_el, ITEMATTR_VAL_STA, old_month )	-------------�� 	
--	SetItemAttr(Item_el, ITEMATTR_VAL_STR, old_day )		-------------��  
--	SetItemAttr(Item_el, ITEMATTR_VAL_CON, old_hour )		-------------ʱ 
--	SetItemAttr(Item_el, ITEMATTR_VAL_DEX, old_miniute )	-------------��
--
--	local old_month2 = GetItemAttr(Item_el, ITEMATTR_VAL_STA)		-------------�� 	
--	local old_day2 = GetItemAttr(Item_el, ITEMATTR_VAL_STR)			-------------��  
--	local old_hour2 = GetItemAttr(Item_el, ITEMATTR_VAL_CON)			-------------ʱ   
--	local old_miniute2 = GetItemAttr(Item_el, ITEMATTR_VAL_DEX)		-------------�� 
--
--	--SystemNotice ( role , "old_month2=="..old_month2 )
--	--SystemNotice ( role , "old_day2=="..old_day2 )       
--	--SystemNotice ( role , "old_hour2=="..old_hour2 )    
--	--SystemNotice ( role , "old_miniute2=="..old_miniute2)
--
--	SynChaKitbag(role,13)
--
--end
--
--
--------------------�����̻�
--function ItemUse_LMYH ( role , Item )
--	local Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "���������� ������������ � ����" )
--		UseItemFailed ( role )
--		return
--	end
--end
--
--------------------�����̻�
--function ItemUse_JXYH ( role , Item )
--	local Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "���������� ������������ � ����" )
--		UseItemFailed ( role )
--		return
--	end
--end
--
--------------------�����̻�
--function ItemUse_HHLH ( role , Item )
--	local Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "���������� ������������ � ����" )
--		UseItemFailed ( role )
--		return
--	end
--end
--
---------����ʹ��֤��
--function Jz_Script_jtsyzs (role, Item )
--	--SystemNotice ( role , "Invitation Invitation Invitation" )
--	local Now_Day = os.date("%d")
--	local Now_Month = os.date("%m")
--	local Now_Time = os.date("%H")
--	--SystemNotice ( role , "Wahaha" )
--	local NowMniuteNum= os.date("%M")	-------------��
--	local NowMiniuteNum= tonumber(Now_Miniute)	 	-------------��
--	local NowTimeNum = tonumber(Now_Time)
--	--SystemNotice ( role , "huhuhuhu" )
--	local NowDayNum = tonumber(Now_Day)
--	--SystemNotice ( role , "hehehehe" )
--	local NowMonthNum = tonumber(Now_Month)
--	--SystemNotice ( role , "kekekeke" )
--	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
--	--SystemNotice ( role , "timing is now"..CheckDateNum)
--	--local old_type = GetItemAttr(item_old, ITEMATTR_MAXENERGY)	----------------��ʽ����
--
--	local item_old = GetChaItem2 ( role , 2 , 3078 )---------���
--	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------�� 	
--	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------��  
--	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------ʱ 
--	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
--	 
--
--	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
--	--SystemNotice ( role , "CheckBook1Num"..CheckBook1Num)
--	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
--	--SystemNotice ( role , "CheckBook2Num"..CheckBook2Num)
--	
--	if CheckDateNum < CheckBook1Num then
--		SystemNotice ( role , "Please be patient, Church is not opened yet. Please come back according to the time listed" )
--		UseItemFailed ( role )
--		return
--	end
--	--SystemNotice ( role , "Mother")
--	if CheckDateNum > CheckBook2Num then
--		SystemNotice ( role , "The wedding you want to visit is already finished, too bad" )
--		UseItemFailed ( role )
--		return
--	end
--	--SystemNotice ( role , "Father")
--
--	local i = CheckBagItem(role,3066)----����ʹ��֤��
--	local k = ChaIsBoat(role)
--	local hp = Hp(role)
--	local mxhp = Mxhp(role)
--	local sp = Sp(role)
--	local mxsp = Mxsp(role)
--	if sp < mxsp or hp < mxhp then 
--		SystemNotice (role, "Visiting the church is a tiring process, please keep your hp and sp at 100%")
--		UseItemFailed ( role )
--		return
--	end 
--	if k == 0 then
--		if i > 0 then
--			local j = DelBagItem(role,3066,1)-------����ʹ��֤��
--			--if j == 1 and old_type=1 then
--				--MoveCity(role,"French Wedding Hall")
--			--elseif	j == 1 and old_type=2 then
--				--MoveCity(role,"Chinese style church")
--			if j == 1 then-------------elseif	j == 1 and old_type=3 then
--				MoveCity(role,"Church")
--				--SystemNotice ( role , "Grandfather")
--			--elseif	j == 1 and old_type=4 then
--				--MoveCity(role,"Ground type Church")
--			end
--		end
--	else
--		UseItemFailed ( role )
--	end
--	--SystemNotice ( role , "Granny")	
--end
--
--
--------------���
--function Jz_Script_qj (role, Item )
--	--SystemNotice ( role , "Invitation Invitation Invitation" )
--	local Now_Day = os.date("%d")
--	local Now_Month = os.date("%m")
--	local Now_Time = os.date("%H")
--	--SystemNotice ( role , "Wahaha" )
--	local NowMniuteNum= os.date("%M")	-------------��
--	local NowMiniuteNum= tonumber(Now_Miniute)	 	-------------��
--	local NowTimeNum = tonumber(Now_Time)
--	--SystemNotice ( role , "huhuhuhu" )
--	local NowDayNum = tonumber(Now_Day)
--	--SystemNotice ( role , "hehehehe" )
--	local NowMonthNum = tonumber(Now_Month)
--	--SystemNotice ( role , "kekekeke" )
--	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
--	--SystemNotice ( role , "timing is now"..CheckDateNum)
--	--local old_type = GetItemAttr(item_old, ITEMATTR_MAXENERGY)	----------------��ʽ����
--
--	local item_old = GetChaItem2 ( role , 2 , 3078 )-----���
--	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------�� 	
--	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------��  
--	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------ʱ 
--	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
--	 
--
--	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
--	--SystemNotice ( role , "CheckBook1Num"..CheckBook1Num)
--	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
--	--SystemNotice ( role , "CheckBook2Num"..CheckBook2Num)
--	
--	if CheckDateNum < CheckBook1Num then
--		SystemNotice ( role , "Please be patient, Church is not opened yet. Please come back according to the time listed" )
--		UseItemFailed ( role )
--		return
--	end
--	--SystemNotice ( role , "Mother")
--	if CheckDateNum > CheckBook2Num then
--		SystemNotice ( role , "The wedding you want to visit is already finished, too bad" )
--		UseItemFailed ( role )
--		return
--	end
--	--SystemNotice ( role , "Father")
--
--	local i = CheckBagItem(role,3078)
--	local k = ChaIsBoat(role)
--	local hp = Hp(role)
--	local mxhp = Mxhp(role)
--	local sp = Sp(role)
--	local mxsp = Mxsp(role)
--	if sp < mxsp or hp < mxhp then 
--		SystemNotice (role, "Visiting the church is a tiring process, please keep your hp and sp at 100%")
--		UseItemFailed ( role )
--		return
--	end 
--	if k == 0 then
--		if i > 0 then
--			local j = DelBagItem(role,3078,1)
--			--if j == 1 and old_type=1 then
--				--MoveCity(role,"French Wedding Hall")
--			--elseif	j == 1 and old_type=2 then
--				--MoveCity(role,"Chinese style church")
--			if j == 1 then-------------elseif	j == 1 and old_type=3 then
--				MoveCity(role,"Church")
--				--SystemNotice ( role , "Grandfather")
--			--elseif	j == 1 and old_type=4 then
--				--MoveCity(role,"Ground type Church")
--			end
--		end
--	else
--		UseItemFailed ( role )
--	end
--	--SystemNotice ( role , "Granny")	
--end
-----------------------------�ٻ�����������
--function ItemUse_FLOWER ( role , Item  )
--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "���������� ������������ � ����" )
--		UseItemFailed ( role )
--		return
--	end
--
--	local el = 0
--	el =IsChaInRegion( role, 2 )
--	if el == 1 then
--		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
--		UseItemFailed ( role )
--		return
--	end
--	local x, y = GetChaPos(role)
--	local MonsterID = 1037
--	local Refresh = 7300					--����ʱ�䣬�뵥λ
--	local life = 7200000					--����ʱ�䣬���뵥λ
--	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
--	SetChaLifeTime( new, life )
--end
--
--
-----------------------------������Ϸȯ
--function ItemUse_QQ ( role , Item  )
--	local Cha_Boat = 0
--	Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "���������� ������������ � ����" )
--		UseItemFailed ( role )
--		return
--	end
--
--	local el = 0
--	el =IsChaInRegion( role, 2 )
--	if el == 1 then
--		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
--		UseItemFailed ( role )
--		return
--	end
--	local x, y = GetChaPos(role)
--	local MonsterID = 1036
--	local Refresh = 60					--����ʱ�䣬�뵥λ
--	local life = 7200000					--����ʱ�䣬���뵥λ
--	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
--	SetChaLifeTime( new, life )
--end
----��ʽ���òι���Ʊ
--function Jz_Script_yszs (role, Item )
--	
--	local Now_Week = os.date("%w")
--	local Now_WeekNum = tonumber(Now_Week)
--	local Now_Time = os.date("%H")
--	local Now_TimeNum = tonumber(Now_Time)
--	local Now_Miniute= os.date("%M")	
--	local Now_Miniute= tonumber(Now_Miniute)
--	local CheckDateNum = Now_WeekNum * 10000 + Now_TimeNum * 100+Now_Miniute
--
--	if CheckDateNum < 11700  then
--		SystemNotice ( role , "Please be patient, church is not opened yet. Please come back on Monday night from 17:00 ~ 17:30pm" )
--		UseItemFailed ( role )
--		return
--	end
--	
--	if CheckDateNum > 11730 then
--		SystemNotice ( role , "Church is now closed, please wait until next Monday night" )
--		UseItemFailed ( role )
--		return
--	end
--
--	local i = CheckBagItem(role,3024)
--	local k = ChaIsBoat(role)
--	local hp = Hp(role)
--	local mxhp = Mxhp(role)
--	local sp = Sp(role)
--	local mxsp = Mxsp(role)
--	if sp < mxsp or hp < mxhp then 
--		SystemNotice (role, "Visiting the church is a tiring process, please keep your hp and sp at 100%")
--		UseItemFailed ( role )
--		return
--	end 
--	if k == 0 then
--		if i > 0 then
--			local j = DelBagItem(role,3024,1)
--			if j == 1 then
--				MoveCity(role,"Church")
--				return
--			end
--		end
--	else
--		UseItemFailed ( role )
--	end
--		
--end
-------------------------------��������ֻ���ڣ�ÿ����\����18:00--22��10���򿪲Ż���Ч
--
--function ItemUse_RedBox( role , Item )
--	local Cha_Boat = GetCtrlBoat ( role )
--	if Cha_Boat ~=  nil then
--		SystemNotice( role , "���������� ������������ � ����" )
--		UseItemFailed ( role )
--		return
--	end
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
--	 if Item_CanGet < 1 then
--		SystemNotice(role ,"You need at least 1 empty slots to open Auspicious Bag")
--		UseItemFailed ( role )
--		return
--	end
--	local now_week= os.date("%w")		-------------���ڼ���ʮ���ƣ� 
--	local now_hour= os.date("%H")		-------------ʱ 
--	local now_miniute= os.date("%M")	-------------��
--	now_week= tonumber(now_week)
--	now_hour= tonumber(now_hour)		
--	now_miniute= tonumber(now_miniute)
--	local CheckDateNum = now_hour*100 +now_miniute
--	--Notice("CheckDateNum = "..CheckDateNum)
--      if now_week==6 or now_week==0 then
--		
--		if 1800<=CheckDateNum and  CheckDateNum<=2210 then
--		--SystemNotice( role , "Use YSBOX" )
--		ItemUse_YSBOX ( role , Item )
--		else 
--		SystemNotice(role ,"It is not time yet. Do not try to cheat!")
--		UseItemFailed ( role )
--		return
--		end
--	end
--end

--ID 3039	������ ���������
function ItemUse_TJQ ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv >70 then
		SystemNotice ( role , "������ ��������� ����� ������������ ������ ������ �� ��������� 70 ������." )
		UseItemFailed ( role )
		return
	end
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

------------------------��ţ�������䣺˫�������ݽ�ɫ�������

function ItemUse_JNCZBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 4 space to use the Taurus Apparel Chest")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
		 
		   GiveItem ( role , 0 , 5364  , 1 , 4 )
		   GiveItem ( role , 0 , 5365  , 1 , 4 )
		   GiveItem ( role , 0 , 5366  , 1 , 4 )
		   GiveItem ( role , 0 , 5367  , 1 , 4 )
	elseif cha_type == 4  then 

		   GiveItem ( role , 0 , 5368  , 1 , 4 )
		   GiveItem ( role , 0 , 5369  , 1 , 4 )
		   GiveItem ( role , 0 , 5370  , 1 , 4 )
		   GiveItem ( role , 0 , 5371  , 1 , 4 )
	elseif cha_type == 1 then 
		  
		   GiveItem ( role , 0 , 5356  , 1 , 4 )
		   GiveItem ( role , 0 , 5357  , 1 , 4 )
		   GiveItem ( role , 0 , 5358  , 1 , 4 )
		   GiveItem ( role , 0 , 5359  , 1 , 4 )
	elseif cha_type == 2 then 

		   GiveItem ( role , 0 , 5360  , 1 , 4 )
		   GiveItem ( role , 0 , 5361  , 1 , 4 )
		   GiveItem ( role , 0 , 5362  , 1 , 4 )
		   GiveItem ( role , 0 , 5363  , 1 , 4 )
	end
end


---------------------------�ٻ���ţ�ػ���
function ItemUse_JNSHZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1038
	local Refresh = 10900					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

--Ŵ����
function ItemUse_NMZ ( role , Item )
	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
  	--local hp = GetChaAttr(role, ATTR_HP) 
	--local mxhp = GetChaAttr(role,ATTR_MXHP) 	
	--hp = hp + 0.35*mxhp 

	--if hp > mxhp then 
		--hp = mxhp 
	--end 
	--SetCharaAttr(hp, role, ATTR_HP)

end


------------------------------��ɳ�գ������ٶ���15�������нϴ�����Ч��
function ItemUse_DSZ ( role , Item )
	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
	--local statelv = 1
	--local statetime = 900
	--local Cha_Boat = 0
	--Cha_Boat = GetCtrlBoat ( role )
	--if Cha_Boat ==  nil then
		--Rem_State_StarUnnormal ( role )----------
		--AddState( role , role , STATE_DSZ , statelv , statetime )
	--else
		--SystemNotice( role , "���������� ������������ � ����" )
		--UseItemFailed ( role )
		--return
	--end
end

-------------------------------������: ��������10����������60��
function ItemUse_DHZ ( role , Item )
	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
	--local statelv = 1
	--local statetime = 600
	--local Cha_Boat = 0
	--Cha_Boat = GetCtrlBoat ( role )

	--if Cha_Boat ==  nil then
		--AddState( role , role , STATE_DHZ , statelv , statetime )
	--else
		--SystemNotice( role , "���������� ������������ � ����" )
		--UseItemFailed ( role )
		--return
	--end
end
----------------------------��������
function ItemUse_WQZZ ( role , Item )
	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
	--local el_exp = GetChaAttr(role, ATTR_CEXP)
	--local exp1=el_exp
	--local charLv=Lv ( role )
	--local exp_resume = 50
	--local	exp_resume_1= 1
	--el_exp = el_exp + exp_resume
	-- if charLv>=80 then	
		--el_exp = exp1 + exp_resume_1
	--end
	--SetCharaAttr(el_exp, role, ATTR_CEXP) 
end 

---------------------------�ٻ���������
function ItemUse_HLHT ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 952---------������Ӱ
	local Refresh = 9000					--����ʱ�䣬�뵥λ
	local life =9000000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

---------------------------�ٻ�����սʿͳ��
function ItemUse_XYZSTL ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 786---------����սʿͳ��
	local Refresh = 9000					--����ʱ�䣬�뵥λ
	local life = 9000000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

---------------------------�ٻ�а�����������
function ItemUse_XETZQZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 788---------а�����������
	local Refresh = 9000					--����ʱ�䣬�뵥λ
	local life = 9000000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

---------------------------�ٻ������������㷢
function ItemUse_HDCZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 757---------�����������㷢
	local Refresh = 9000					--����ʱ�䣬�뵥λ
	local life = 9000000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

---------------------------�ٻ�����
function ItemUse_HY ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 761---------����
	local Refresh = 9000					--����ʱ�䣬�뵥λ
	local life = 9000000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
----------������ĸ������
function ItemUse_XingYunBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local el=math.random ( 1, 241920 )
	if el==1 then
		GiveItem ( role , 0 , 0961, 1 , 4  ) -------------c	
	elseif el==2 then
		GiveItem ( role , 0 , 0969, 1 , 4  ) -----------k		
	elseif el>=3 and el<=4 then
		GiveItem ( role , 0 , 0973, 1 , 4  )	-------------p	
	elseif el>=5 and el<=6 then
		GiveItem ( role , 0 , 0980, 1 , 4  )	-------------v
	elseif el>=7 and el<=8 then
		GiveItem ( role , 0 , 0979, 1 , 4  )	-------------u
	else
		local el=math.random ( 0959, 0984 )
		if el==0961 or el==0969 or el==0973 or el==0980 or el==0979 then
			GiveItem ( role , 0 , 0959  , 1 , 4  ) 
		else 
			GiveItem ( role , 0 , el , 1 , 4  ) 			
		end
	end
end

--ID0993	��������������
function ItemUse_CJZTQ ( role , Item )
	local lv = GetChaAttr(role, ATTR_LV) 
	if lv > 49 then
		SystemNotice ( role , "�������������� ����� ������������ ������ ������ �� ��������� 50 ������." )
		UseItemFailed ( role )
		return
	end
	local statelv = 8
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

----------���ͻԻͲ�Ʊ
function ItemUse_SJHHCP( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 1115  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 1117  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 1118  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 1116  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end


----------�������޲�Ʊ
function ItemUse_ZZNSCP( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 2552  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 2550  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 2551  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 2549  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end

----------�桤������Ʊ
function ItemUse_ZHLCP( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000000 )
	local el=math.random ( 1, 100 )

	--SystemNotice(role ,"star=="..star)
	--SystemNotice(role ,"el=="..el)
	if  star==1 then
		if el>=1 and el<=40 then
		GiveItem ( role , 0 , 2370  , 1 , 4  )
		elseif el>=41 and el<=65 then
		GiveItem ( role , 0 , 2368  , 1 , 4  )
		elseif el>=65 and el<=90 then
		GiveItem ( role , 0 , 2369  , 1 , 4  )
		elseif el>=91 and el<=100 then
		GiveItem ( role , 0 , 2367  , 1 , 4  ) 
		end
	elseif star>1 and star<=9999 then
		GiveItem ( role , 0 , 0273, 1 , 4  ) 
	elseif star>=10000 and star<170000 then
		GiveItem ( role , 0 , 2312, 30 , 4  ) 
	elseif star>=170000 and star<=1000000 then
		GiveItem ( role , 0 , 3877, 1 , 4  ) 
	end
end




----------����ת����Ʊ------rockҪ��
function ItemUse_JSZSCP( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 1000 )

	if  star==1 then
		GiveItem ( role , 0 , 2941, 1 , 4  ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = "Player"..cha_name.."��Ʒ����,�򿪾���ת����Ʊ��ϲ�ػ��1��ת����." 
		Notice ( message )
	elseif star>1 and star<=10 then
		GiveItem ( role , 0 , 3016, 1 , 4  ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = "Player"..cha_name.."��Ʒ����,�򿪾���ת����Ʊ��ϲ�ػ��1�ź��������ٻ���." 
		Notice ( message )
	elseif star>=11 and star<190 then
		GiveItem ( role , 0 , 0992, 1 , 4  ) 
	elseif star>=190 and star<=1000 then
		GiveItem ( role , 0 , 3885, 1 , 4  ) 
	end
end
-------------------ף������
function ItemUse_ZFBZ( role , Item )
	local statelv = 1
	local statetime = 15
	AddState( role , role , STATE_CZZX , statelv , statetime )
end
------------------------�ɳ����
function ItemUse_CZKC ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )----------��ǰ�ȼ�����
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.01+Exp_star
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	if charLv<86 then
		SystemNotice( role , "86�����½�ɫ����ʹ��" )
		UseItemFailed ( role )
		return
	end
	if charLv>=86 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )
        end
end
------------------------˫�Ӵ������䣺˫�������ݽ�ɫ�������

function ItemUse_SZCZBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"ʹ��˫�ӿ�װ����������Ҫ4����λ")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
		 
		   GiveItem ( role , 0 , 5380  , 1 , 4 )
		   GiveItem ( role , 0 , 5381  , 1 , 4 )
		   GiveItem ( role , 0 , 5382  , 1 , 4 )
		   GiveItem ( role , 0 , 5383  , 1 , 4 )
	elseif cha_type == 4  then 

		   GiveItem ( role , 0 , 5384  , 1 , 4 )
		   GiveItem ( role , 0 , 5385  , 1 , 4 )
		   GiveItem ( role , 0 , 5386  , 1 , 4 )
		   GiveItem ( role , 0 , 5387  , 1 , 4 )
	elseif cha_type == 1 then 
		  
		   GiveItem ( role , 0 , 5372  , 1 , 4 )
		   GiveItem ( role , 0 , 5373  , 1 , 4 )
		   GiveItem ( role , 0 , 5374  , 1 , 4 )
		   GiveItem ( role , 0 , 5375  , 1 , 4 )
	elseif cha_type == 2 then 

		   GiveItem ( role , 0 , 5376  , 1 , 4 )
		   GiveItem ( role , 0 , 5377  , 1 , 4 )
		   GiveItem ( role , 0 , 5378  , 1 , 4 )
		   GiveItem ( role , 0 , 5379  , 1 , 4 )
	end
end



---------------------------�ٻ�˫���ػ���
function ItemUse_SZSHZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1039
	local Refresh = 10900					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end


----------��ҵ֤��ʹ��
function ItemUse_byzm ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 100 )
	SystemNotice(role ,"star=="..star)
	if star<=5 then
		GiveItem ( role , 0 , 1028  , 1 , 4  )
		local message = cha_name.."�򿪱�ҵ֤�龪ϲ�ػ�� 1��Ħ����ʯ" 
		Notice ( message )
	elseif star>=6 and star<=20 then
		GiveItem ( role , 0 , 885, 1 , 4  ) 
		local message1 = cha_name.."�򿪱�ҵ֤�龪ϲ�ػ�� 1�ž���ʯ" 
		Notice ( message1 )
	elseif star>=21 and star<=50 then
		GiveItem ( role , 0 , 3039, 5 , 4  ) 
		local message2 = cha_name.."�򿪱�ҵ֤�龪ϲ�ػ�� 5�������ƽ���" 
		Notice ( message2 )
	else
		GiveItem ( role , 0 , 227, 10 , 4  )
		local message3 = cha_name.."�򿪱�ҵ֤�龪ϲ�ػ�� 10���ػ���������" 
		Notice ( message3 )
	end
end
------------------------��ѧ�������˫�������ݽ�ɫ�������

function ItemUse_kxdlb ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"ʹ�ÿ�ѧ�����������Ҫ4����λ")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
		   GiveItem ( role , 0 , 5396  , 1 , 4 )
		   GiveItem ( role , 0 , 5397  , 1 , 4 )
		   GiveItem ( role , 0 , 5398  , 1 , 4 )
		   GiveItem ( role , 0 , 5399  , 1 , 4 )
	elseif cha_type == 4  then 
		   GiveItem ( role , 0 , 5400  , 1 , 4 )
		   GiveItem ( role , 0 , 5401  , 1 , 4 )
		   GiveItem ( role , 0 , 5402  , 1 , 4 )
		   GiveItem ( role , 0 , 5403  , 1 , 4 )
	elseif cha_type == 1 then 
		   GiveItem ( role , 0 , 5388  , 1 , 4 )
		   GiveItem ( role , 0 , 5389  , 1 , 4 )
		   GiveItem ( role , 0 , 5390  , 1 , 4 )
		   GiveItem ( role , 0 , 5391  , 1 , 4 )
	elseif cha_type == 2 then 
		   GiveItem ( role , 0 , 5392  , 1 , 4 )
		   GiveItem ( role , 0 , 5393  , 1 , 4 )
		   GiveItem ( role , 0 , 5394  , 1 , 4 )
		   GiveItem ( role , 0 , 5395  , 1 , 4 )
	end
end


-------------------------------ʤ������
function ItemUse_SLBox ( role , Item )
	local a = math.random ( 1 , 100 )
	local Item_ID = 0
	if a >= 1 and a <= 50 then
		Item_ID = 1012
	elseif a > 50 and a <= 80 then
		Item_ID = 271
	else
		Item_ID = 885
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"ʹ��ʤ������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	else
		GiveItem ( role , 0 , Item_ID , 1 , 4 )
	end
end

--------------------------------65BOSSװ����
function ItemUse_65BBBox ( role , Item )
	local job = GetChaAttr( role, ATTR_JOB) --ȡְҵ
        local cha_type = GetChaTypeID ( role )
	if job == 0 then
		SystemNotice ( role , "ֻ��һת���ϵĽ�ɫ�ſ���ʹ�ñ�����")
		UseItemFailed ( role )
		return
	else
		if job == 12 or job == 2 then		--���˻�ѻ�
			GiveItem( role , 0 , 780  , 1 , 4 )
		elseif job == 9	then			--˫��
			GiveItem( role , 0 , 769  , 1 , 4 )
		elseif job == 16 or job == 4 then	--ð�ջ򺽺�
			GiveItem( role , 0 , 806  , 1 , 4 )
		elseif job == 8	then			--�޽�
			GiveItem( role , 0 , 766  , 1 , 4 )
		elseif job == 13 or job == 5 then	--ʥְ��ҩʦ
			GiveItem( role , 0 ,792  , 1 , 4 )
		elseif job == 14 then			--��ӡ
			GiveItem( role , 0 , 798  , 1 , 4 )
		elseif job == 1 then
			if cha_type == 1 then
				GiveItem( role , 0 , 769  , 1 , 4 )
			elseif cha_type == 2 then
				GiveItem( role , 0 , 766  , 1 , 4 )
			end
		end
	
	end
end


---------------------��з�������䣺˫�������ݽ�ɫ�������

function ItemUse_JXBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"ʹ�þ�з��װ����������Ҫ4����λ")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
		 
		   GiveItem ( role , 0 , 5464  , 1 , 4 )
		   GiveItem ( role , 0 , 5465  , 1 , 4 )
		   GiveItem ( role , 0 , 5466  , 1 , 4 )
		   GiveItem ( role , 0 , 5467  , 1 , 4 )
	elseif cha_type == 4  then 

		   GiveItem ( role , 0 , 5468  , 1 , 4 )
		   GiveItem ( role , 0 , 5469  , 1 , 4 )
		   GiveItem ( role , 0 , 5470  , 1 , 4 )
		   GiveItem ( role , 0 , 5471  , 1 , 4 )
	elseif cha_type == 1 then 
		  
		   GiveItem ( role , 0 , 5456  , 1 , 4 )
		   GiveItem ( role , 0 , 5457  , 1 , 4 )
		   GiveItem ( role , 0 , 5458  , 1 , 4 )
		   GiveItem ( role , 0 , 5459  , 1 , 4 )
	elseif cha_type == 2 then 

		   GiveItem ( role , 0 , 5460  , 1 , 4 )
		   GiveItem ( role , 0 , 5461  , 1 , 4 )
		   GiveItem ( role , 0 , 5462  , 1 , 4 )
		   GiveItem ( role , 0 , 5463  , 1 , 4 )
	end
end

---------------------------�ٻ���з�ػ���
function ItemUse_JXSHZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1040
	local Refresh = 10900					--����ʱ�䣬�뵥λ
	local life = 3600000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end



function Sk_Script_DS ( role , Item ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		UseItemFailed ( role ) 
		SystemNotice( role , "��������Ҫһ���ո������ѧ��֤")
		return 
	end 
	local sk_add = SK_DS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 				--ѧ�Ἴ��
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
	
	local r1 = 0
	local r2 = 0
	r1, r2 = MakeItem ( role , 3289 , 1 , 4 )				--��ѧ��֤
	local Itemnew = GetChaItem ( role , 2 , r2 )

	SetItemAttr(Itemnew, ITEMATTR_MAXENERGY , 120)  --������ߴ洢����
	SetItemAttr(Itemnew, ITEMATTR_ENERGY , 0 )     				 --���õ�ǰ�洢����
	SetItemAttr(Itemnew, ITEMATTR_URE,0)								 --���õ�ǰ�洢ѧ��
	SetItemAttr(Itemnew, ITEMATTR_MAXURE,150)						--���õ�ǰ���ѧ�֣���ֵ��ÿ���������Ժ��仯
	SetItemAttr(Itemnew, ITEMATTR_FORGE,0)								--����ѧ��
	
	LiveSkillLearnLog(role, 461)
end 

function ItemUse_WisdomApple( role , Item )		-------�ǻ۹�ʹ��Ч��
	local Lv = Lv( role )
	if Lv < 40 then
		SystemNotice(role ,"Only players Lv 40 and above may use")
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_APPLE )
	
	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_APPLE , statelv , statetime )
	else
		UseItemFailed ( role )
		SystemNotice( role , "�����޷�ʳ���ǻ۹�")
	end
end

function ItemUse_GoldApple ( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"Only Lv 60 and above may use")
		UseItemFailed ( role )
		return
	end

	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_APPLE )
	
	if ChaStateLv >= statelv then
		SystemNotice ( role , "����� ����������� ��� ����������� �������� ��� ������������" )
		UseItemFailed ( role )
		return
	end

	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_APPLE , statelv , statetime )
	else
		UseItemFailed ( role )
		SystemNotice( role , "�����޷�ʳ�ý�ƻ����")
	end
end


--------------------------------------------�α�����
function ItemUse_JBBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"To open a Chest requires 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , 3078  , 1 , 4 )
	local Item_el = GetChaItem ( role , 2 , r2 )			--ȡ�¾������ָ��

	local item_old = GetChaItem2 ( role , 2 , 3066 )

	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------�� 	
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------��  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------ʱ   
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)		-------------��   
	
	--SystemNotice ( role , "old_month=="..old_month )
	--SystemNotice ( role , "old_day=="..old_day )       
	--SystemNotice ( role , "old_hour=="..old_hour )    
	--SystemNotice ( role , "old_miniute=="..old_miniute)

	SetItemAttr(Item_el, ITEMATTR_VAL_STA, old_month )	-------------�� 	
	SetItemAttr(Item_el, ITEMATTR_VAL_STR, old_day )		-------------��  
	SetItemAttr(Item_el, ITEMATTR_VAL_CON, old_hour )		-------------ʱ 
	SetItemAttr(Item_el, ITEMATTR_VAL_DEX, old_miniute )	-------------��

	local old_month2 = GetItemAttr(Item_el, ITEMATTR_VAL_STA)		-------------�� 	
	local old_day2 = GetItemAttr(Item_el, ITEMATTR_VAL_STR)			-------------��  
	local old_hour2 = GetItemAttr(Item_el, ITEMATTR_VAL_CON)			-------------ʱ   
	local old_miniute2 = GetItemAttr(Item_el, ITEMATTR_VAL_DEX)		-------------�� 

	--SystemNotice ( role , "old_month2=="..old_month2 )
	--SystemNotice ( role , "old_day2=="..old_day2 )       
	--SystemNotice ( role , "old_hour2=="..old_hour2 )    
	--SystemNotice ( role , "old_miniute2=="..old_miniute2)

	SynChaKitbag(role,13)

end


------------------�����̻�
function ItemUse_LMYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

------------------�����̻�
function ItemUse_JXYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

------------------�����̻�
function ItemUse_HHLH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
end

---------����ʹ��֤��
function Jz_Script_jtsyzs (role, Item )
	
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowMniuteNum= os.date("%M")	
	local NowMiniuteNum= tonumber(Now_Miniute)	 	
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
	--SystemNotice ( role , "timing is now"..CheckDateNum)

	local item_old = GetChaItem2 ( role , 2 , 3066 )----����ʹ��֤
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)			
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)				
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			 
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
	 
	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
	--SystemNotice ( role , "CheckBook1Num"..CheckBook1Num)
	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
	--SystemNotice ( role , "CheckBook2Num"..CheckBook2Num)
	
	local i = CheckBagItem(role,3066)
	local k = ChaIsBoat(role)
	if CheckDateNum >= CheckBook1Num  and CheckDateNum <= CheckBook2Num and k ==0 and  i >0 then
		 DelBagItem(role,3066,1)
		MoveCity(role,"Church")	
	else
		SystemNotice ( role , "��?�ѵ���ʱ�䲻��")
		UseItemFailed ( role )
	end
end

------------���
function Jz_Script_qj (role, Item )
	--SystemNotice ( role , "Invitation Invitation Invitation" )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	--SystemNotice ( role , "Wahaha" )
	local NowMniuteNum= os.date("%M")	-------------��
	local NowMiniuteNum= tonumber(Now_Miniute)	 	-------------��
	local NowTimeNum = tonumber(Now_Time)
	--SystemNotice ( role , "huhuhuhu" )
	local NowDayNum = tonumber(Now_Day)
	--SystemNotice ( role , "hehehehe" )
	local NowMonthNum = tonumber(Now_Month)
	--SystemNotice ( role , "kekekeke" )
	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
	--SystemNotice ( role , "timing is now"..CheckDateNum)
	--local old_type = GetItemAttr(item_old, ITEMATTR_MAXENERGY)	----------------��ʽ����

	local item_old = GetChaItem2 ( role , 2 , 3078 )
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		-------------�� 	
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			-------------��  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			-------------ʱ 
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
	 

	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
	--SystemNotice ( role , "CheckBook1Num"..CheckBook1Num)
	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
	--SystemNotice ( role , "CheckBook2Num"..CheckBook2Num)
	
	if CheckDateNum < CheckBook1Num then
		SystemNotice ( role , "Please be patient, Church is not opened yet. Please come back according to the time listed" )
		UseItemFailed ( role )
		return
	end
	--SystemNotice ( role , "Mother")
	if CheckDateNum > CheckBook2Num then
		SystemNotice ( role , "The wedding you want to visit is already finished, too bad" )
		UseItemFailed ( role )
		return
	end
	--SystemNotice ( role , "Father")

	local i = CheckBagItem(role,3078)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Visiting the church is a tiring process, please keep your hp and sp at 100%")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3078,1)
			--if j == 1 and old_type=1 then
				--MoveCity(role,"French Wedding Hall")
			--elseif	j == 1 and old_type=2 then
				--MoveCity(role,"Chinese style church")
			if j == 1 then-------------elseif	j == 1 and old_type=3 then
				MoveCity(role,"Church")
				--SystemNotice ( role , "Grandfather")
			--elseif	j == 1 and old_type=4 then
				--MoveCity(role,"Ground type Church")
			end
		end
	else
		UseItemFailed ( role )
	end
	--SystemNotice ( role , "Granny")	
end
---------------------------�ٻ�����������
function ItemUse_FLOWER ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end

	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1037
	local Refresh = 7300					--����ʱ�䣬�뵥λ
	local life = 7200000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end


---------------------------������Ϸȯ
function ItemUse_QQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end

	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "���������� �������� ������� � ���������� ����" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1036
	local Refresh = 60					--����ʱ�䣬�뵥λ
	local life = 7200000					--����ʱ�䣬���뵥λ
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
--��ʽ���òι���Ʊ
function Jz_Script_yszs (role, Item )
	
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
	local Now_Time = os.date("%H")
	local Now_TimeNum = tonumber(Now_Time)
	local Now_Miniute= os.date("%M")	
	local Now_Miniute= tonumber(Now_Miniute)
	local CheckDateNum = Now_WeekNum * 10000 + Now_TimeNum * 100+Now_Miniute

	if CheckDateNum < 11700  then
		SystemNotice ( role , "��Ҫ�ż�Ŷ�����û�û���ţ�����ÿ����һ����17�㵽17��10��֮��ʹ��Ŷ" )
		UseItemFailed ( role )
		return
	end
	
	if CheckDateNum > 11710 then
		SystemNotice ( role , "Church is now closed, please wait until next Monday night" )
		UseItemFailed ( role )
		return
	end

	local i = CheckBagItem(role,3024)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Visiting the church is a tiring process, please keep your hp and sp at 100%")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3024,1)
			if j == 1 then
				MoveCity(role,"Church")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
-----------------------------��������ֻ���ڣ�ÿ����\����18:00--22��10���򿪲Ż���Ч

function ItemUse_RedBox( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"�򿪺��������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local now_week= os.date("%w")		-------------���ڼ���ʮ���ƣ� 
	local now_hour= os.date("%H")		-------------ʱ 
	local now_miniute= os.date("%M")	-------------��
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)
	local CheckDateNum = now_hour*100 +now_miniute
	local flag=0
      if now_week==6 or now_week==0 then
		flag=1
      end
	if 1800<=CheckDateNum and  CheckDateNum<=2210 and flag==1 then
		ItemUse_hongbaoBOX ( role , Item )
	else 
		SystemNotice(role ,"It is not time yet. Do not try to cheat!")
		UseItemFailed ( role )
		return
	end
end

function ItemUse_hongbaoBOX ( role , Item )
	local ChaName = GetChaDefaultName ( role )

	local el = math.random ( 1, 1000 )
	if  el>=1 and el<=5 then
		GiveItem ( role , 0 , 1012  , 1 , 4 ) -------------����֮��        0.5
			local message ="��ϲ���" ..ChaName.."��Ʒ����,�򿪺����� ����֮��" 
			Notice ( message )
	elseif el>=6 and el<=10 then
		GiveItem ( role , 0 , 1016  , 1 , 4 ) ---------------Ů��С��       0.5
			local message1 ="��ϲ���" ..ChaName.."��Ʒ����,�򿪺����� Ů��С��" 
			Notice ( message1 )
	elseif el>=11 and el<=20 then
		GiveItem ( role , 0 , 0860  , 1 , 4 ) ---------------����1
			local message2 ="��ϲ���" ..ChaName.."��Ʒ����,�򿪺����� ����ʯ" 
			Notice ( message2 )
	elseif el>=21 and el<=30 then
		GiveItem ( role , 0 , 0861  , 1 , 4 ) ----------------ӥ��ʯ     1
			local message3 ="��ϲ���" ..ChaName.."��Ʒ����,�򿪺����� ӥ��ʯ" 
			Notice ( message3 )
	elseif el>=31 and el<40 then
		GiveItem ( role , 0 , 0862  , 1 , 4 ) ----------------����       1
			local message4 ="��ϲ���" ..ChaName.."��Ʒ����,�򿪺����� ����" 
			Notice ( message4 )
	elseif el>=41 and el<=50 then
		GiveItem ( role , 0 , 0863  , 1 , 4 )-----------------����       1
			local message5 ="��ϲ���" ..ChaName.."��Ʒ����,�򿪺����� ����" 
			Notice ( message5 )
	elseif el>=51 and el<=270 then
		GiveItem ( role , 0 , 855  , 99 , 4 )-----------------����Ӳ��       22
	elseif el>=271 and el<=500 then
		GiveItem ( role , 0 , 0227  , 5 , 4 )-----------------�ػ���������    23
	elseif el>=501 and el<=750 then
		GiveItem ( role , 0 , 3096  , 3 , 4 )-----------------�Ƹ�������3��   25
	elseif el>=751 and el<=1000 then
		GiveItem ( role , 0 , 3094  , 3 , 4 )-----------------Ŭ��������3��   25
	end
end
------------------------------------------------���ɲر�ͼ(kokora)---------------------------------
function ItemUse_KYCBT (role, Item)
	local	sc = math.random ( 1,100 )
	if  sc <=50 then
	local cha_name = GetChaDefaultName ( role ) 
	local message1= cha_name.."��Ʒ����,������˲ر�ͼ̽���� ����֮��" 
		Notice ( message1 )
	else 
	local cha_name = GetChaDefaultName ( role ) 
	local message2 = cha_name.."��Ʒ����,������˲ر�ͼ̽���� Ԫ˧֮��" 
		Notice ( message2 )
	end
end
-----------------------------------------------------------kokora---------------------------------------------------------
------------------------------------------------�һ���������(kokora)---------------------------------
function ItemUse_goddessBOX (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ����������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"����������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 43 )
	local ItemId = 0
	
	if sc <=14 then	
		local GoodItem = {}
		GoodItem[0] = 0111   -------------��ħ�� ��û���14%
		GoodItem[1] = 0150   -------------�㳦    ��û���14%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]
	elseif sc <=26 then		
		local GoodItem = {}
		GoodItem[0] = 0109   -------------���ⱦ��       ��û���12%
		GoodItem[1] = 0115   -------------����    ��û���12%
		GoodItem[2] = 0117   -------------�ɺ�    ��û���12%
		GoodItem[3] = 0119   -------------���ǻ���       ��û���12%
	
		local Good_C = math.random ( 1, 4 )-1
		ItemId = GoodItem[Good_C]
	elseif sc <=36 then
		ItemId = 0113   -------------��Ȫ ��û���10%
	else  local GoodItem = {}
		GoodItem[0] = 0861   -------------ӥ��ʯ ��û���7%
		GoodItem[1] = 0860   -------------����ʯ ��û���7%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	GiveItem ( role , 0 , ItemId , 1 , 94 )
	local message = "��ϲ���" ..cha_name.."����������,��ϲ�Ļ��"..itemname  
	Notice ( message )
end
-----------------------------------------------------------kokora---------------------------------------------------------

------------------------------------------------�һ���������(kokora)---------------------------------
function ItemUse_overlordBOX (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "����ʱ����ʹ�ð�������" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"�򿪰�������������Ҫ1����λ")
		UseItemFailed ( role )
		return
	end
	local	sc = math.random ( 1, 43 )
	local ItemId = 0
	
	if  sc <=14 then	
		local GoodItem = {}
		GoodItem[0] = 0112   -------------����֮�� ��û���14%
		GoodItem[1] = 0151   -------------�ϻ�       ��û���14%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]
	elseif sc <=26 then		
		local GoodItem = {}
		GoodItem[0] = 0110   -------------����֮��       ��û���12%
		GoodItem[1] = 0116   -------------����    ��û���12%
		GoodItem[2] = 0118   -------------����    ��û���12%
		GoodItem[3] = 0120   -------------��������       ��û���12%
	
		local Good_C = math.random ( 1, 4 )-1
		ItemId = GoodItem[Good_C]
	elseif sc <=36 then
		ItemId = 0114   -------------���� ��û���10%
	else local GoodItem = {}
		GoodItem[0] = 0863   -------------���� ��û���7%
		GoodItem[1] = 0862   -------------���� ��û���7%
	
		local Good_C = math.random ( 1, 2 )-1
		ItemId = GoodItem[Good_C]
	end
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	GiveItem ( role , 0 , ItemId , 1 , 94 )
	local message = "��ϲ���" ..cha_name.."�򿪰�������,��ϲ�Ļ��"..itemname  
	Notice ( message )
end

------
-- ����� ������ ������ (id 2216)
------

function ItemUse_XiDianBook ( role , item )

	local zsskill_lv  = {}
	zsskill_lv [0] = GetSkillLv ( role, 453 )
	zsskill_lv [1] = GetSkillLv ( role, 454 )
	zsskill_lv [2] = GetSkillLv ( role, 455 )
	zsskill_lv [3] = GetSkillLv ( role, 456 )
	zsskill_lv [4] = GetSkillLv ( role, 457 )
	zsskill_lv [5] = GetSkillLv ( role, 458 )
	
	local n = 0
	local item_canget = GetChaFreeBagGridNum ( role )
	
	local QLZX = GetSkillLv ( role, SK_QLZX )

	if item_canget < 2 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������������ �������")
		UseItemFailed ( role )
	else
		for i = 0, 5, 1 do
			if zsskill_lv [i] >= 1 then
				n = n+1
			end
		end
		local cha_skill_num=GetChaAttr(role, ATTR_TP  )
		local clear_skill_num=ClearFightSkill(role)
		cha_skill_num=cha_skill_num+clear_skill_num
		if n > 0 then
			local job = GetChaAttr( role, ATTR_JOB)
			local item_id = {}
			item_id [8] = 2957
			item_id [9] = 2956
			item_id [12] = 2961
			item_id [13] = 2959
			item_id [14] = 2958
			item_id [16] = 2960
			GiveItem ( role, 0, item_id [job] , 1, 4)
			GiveItem ( role, 0, 1572, 1, 4)
			cha_skill_num = cha_skill_num - 2
		end

		if QLZX == 1 then
			AddChaSkill ( role , SK_QLZX , 1 , 1 , 0 )
		end

		SetChaAttr(role, ATTR_TP ,cha_skill_num ) 
	end
	
end


function Sk_Script_ZSSL( role , item )
	local sk_add = SK_ZSSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--���ܵȼ��Ϸ��Լ��
--		return 
--	end 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ������ � �������� ��� (id 1872)
------
function ItemUse_YingbiBox ( role , Item )

	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 10 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 4 then
				SystemNotice(role ,"��������� 4 ��������� ������ � ���������, ����� ������� ������ � �������� ���")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox1[ChaName] == nil then
				PlayUseBox1[ChaName] = 0
			end
			local Use_Num = PlayUseBox1[ChaName]
			local now_day= os.date("%d")
			local now_month= os.date("%m")
			now_month= tonumber(now_month)
			now_day = tonumber(now_day)
			local Date = JNSTime_Flag[now_month]+now_day
			local Yingbi_Num = 0
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				Yingbi_Num = 20
				local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
					if j == 1 then
						PlayUseBox1[ChaName] = Use_Num
						GiveBragiItem ( role , 1 )
						GiveItem ( role , 0 , 1872 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "��������� 20 ����� ���")
					end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				--SystemNotice ( role , "a="..a)
				if a == 0 then
					Use_Num = Use_Num +1
					local time_new = Time + 1
					if time_new >= 1 and time_new <= 3 then
						Yingbi_Num = (time_new*5) + 15
						--SystemNotice ( role  , "�� ������� ������ � �������� ��� "..time_new.." ���. ��������� "..Yingbi_Num.." ����� ���")
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 1 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "������������ ����� ���")
						end
					elseif time_new >= 4 and time_new <= 6 then
						Yingbi_Num = Time * 15
						--SystemNotice ( role  , "�� ������� ������ � �������� ��� "..time_new.." ���. ��������� "..Yingbi_Num.." ����� ���")
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 2 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "������������ ����� ���")
						end
					else
						Yingbi_Num = 99
						--SystemNotice ( role  , "�� ������� ������ � �������� ��� "..time_new.." ���. ��������� "..Yingbi_Num.." ����� ���")
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 3 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "������������ ����� ���")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "������ � �������� ��� ����� ��������� ������ 10 ��� � ����")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					Yingbi_Num = 20
					--SystemNotice ( role  , "�� ������� ������ � �������� ��� "..time_new.." ���. ��������� "..Yingbi_Num.." ����� ���")
					local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
					if j == 1 then
						PlayUseBox1[ChaName] = Use_Num
						GiveBragiItem ( role )
						GiveItem ( role , 0 , 1872 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "������������ ����� ���")
					end
				end
			end
		else
			SystemNotice( role , "������ ������ ������ 10 � ���� ����� ��������� ������ � �������� ���")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "������ � �������� ��� ����� ��������� ������ �� ���������� �������� ������ ������")
		UseItemFailed ( role )
	end
end

------
-- ������������ ������ ��� (id 1570)
------
function ItemUse_HuiYinBox ( role, Item )

	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 45 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 2 then
				SystemNotice(role ,"��������� 2 ��������� ������ � ����� ���������, ����� ������� ������������ ������ ���")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox2[ChaName] == nil then
				PlayUseBox2[ChaName] = 0
			end
			local Use_Num = PlayUseBox2[ChaName]
			local now_day= os.date("%d")
			local now_month= os.date("%m")
			now_month= tonumber(now_month)
			now_day = tonumber(now_day)
			local Date = JNSTime_Flag[now_month]+now_day
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				local j = TakeItem ( role , 0 , 2588 , 10 )
				if j == 1 then
					PlayUseBox2[ChaName] = Use_Num
					GiveItem ( role , 0 , 3107 , 3 , 4 )
					GiveItem ( role , 0 , 1570 , 1 , 4 )
				else
					UseItemFailed ( role )
					SystemNotice( role, "������������ ���������� �������")
				end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				if a == 0 then
					local time_new = Time + 1
					-- ����������
					if time_new == 1 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 10 )
						if j == 1 then
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 3107 , 3 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "������������ ���������� �������")
						end
					-- �����
					elseif time_new == 2 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 20 )
						if j == 1 then
							PlayUseBox2[ChaName] = Use_Num
							XSAddExpAll ( role , 5 , 5, 2)
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "������������ ���������� �������")
						end
					-- ����� ��������
					elseif time_new == 3 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 30 )
						if j == 1 then
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 850 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "������������ ���������� �������")
						end
					-- ������ ������
					elseif time_new == 4 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 40 )
						if j == 1 then
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 852 , 4 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "������������ ���������� �������")
						end
					-- ������ �����
					elseif time_new == 5 then
						Use_Num = ( Date + 1 )*10
						local j = TakeItem ( role , 0 , 2588 , 50 )
						if j == 1 then
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 851 , 5 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "������������ ���������� �������")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "������������ ������ ��� ����� ��������� ������ 5 ��� � ����")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					local j = TakeItem ( role , 0 , 2588 , 10 )
					if j == 1 then
						PlayUseBox2[ChaName] = Use_Num
						GiveItem ( role , 0 , 3107 , 3 , 4 )
						GiveItem ( role , 0 , 1570 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "������������ ���������� �������")
					end
				end
			end
		else
			SystemNotice( role , "������ ������ ������ 45 � ���� ����� ��������� ������������ ������ ���")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "������������ ������ ��� ����� ��������� ������ �� ���������� �������� ������ ������")
		UseItemFailed ( role )
	end
end

------
-- ������������ ������ ���������� ��� (id 1571)
------
function ItemUse_HuiYinKBox ( role, Item )

	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 70 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 2 then
				SystemNotice(role ,"��������� 2 ��������� ������ � ���������, ����� ������� ������������ ������ ���������� ���")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox3[ChaName] == nil then
				PlayUseBox3[ChaName] = 0
			end
			local Use_Num = PlayUseBox3[ChaName]
			local now_day= os.date("%d")
			local now_month= os.date("%m")
			now_month= tonumber(now_month)
			now_day = tonumber(now_day)
			local Date = JNSTime_Flag[now_month]+now_day
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				local j = TakeItem ( role , 0 , 2589 , 1 )
				if j == 1 then
					PlayUseBox3[ChaName] = Use_Num
					GiveItem ( role , 0 , 850 , 1 , 4 )
					GiveItem ( role , 0 , 3107 , 1 , 4 )
					GiveItem ( role , 0 , 851 , 1 , 4 )
					GiveItem ( role , 0 , 852 , 1 , 4 )
					GiveItem ( role , 0 , 1571 , 1 , 4 )
				else
					UseItemFailed ( role )
					SystemNotice( role, "������������ ���������� ����������� �������")
				end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				if a == 0 then
					local time_new = Time + 1
					if time_new == 1 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2589 , 1 )
						if j == 1 then
							PlayUseBox3[ChaName] = Use_Num
							GiveItem ( role , 0 , 850 , 1 , 4 )
							GiveItem ( role , 0 , 3107 , 1 , 4 )
							GiveItem ( role , 0 , 851 , 1 , 4 )
							GiveItem ( role , 0 , 852 , 1 , 4 )
							GiveItem ( role , 0 , 1571 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "������������ ���������� ����������� �������")
						end
					elseif time_new == 2 then
						Use_Num = ( Date + 1 ) * 10
						local j = TakeItem ( role ,  0 , 2589 , 2 )
						if j == 1 then
							PlayUseBox3[ChaName] = Use_Num
							AddExpAll ( role , 1 , 1, 2 )
							GiveItem ( role , 0 , 1571 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "������������ ���������� ����������� �������")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "������������ ������ ���������� ��� ����� ��������� ������ 2 ���� � ����")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					local j = TakeItem ( role , 0 , 2589 , 1 )
					if j == 1 then
						PlayUseBox3[ChaName] = Use_Num
						GiveItem ( role , 0 , 850 , 1 , 4 )
						GiveItem ( role , 0 , 3107 , 1 , 4 )
						GiveItem ( role , 0 , 851 , 1 , 4 )
						GiveItem ( role , 0 , 852 , 1 , 4 )
						GiveItem ( role , 0 , 1571 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "������������ ���������� ����������� �������")
					end
				end
			end
		else
			SystemNotice( role , "������ ������ ������ 70 � ���� ����� ��������� ������������ ������ ���������� ���")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "������������ ������ ���������� ��� ����� ��������� ������ �� ���������� �������� ������ ������")
		UseItemFailed ( role )
	end
end


--2371	����� ��������
function ItemUse_ALDXB ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 20000 )
	--SystemNotice(role ,"star=="..star)
		if star<=3700 then
			GiveItem ( role , 0 , 2440  , 10 , 4  )
		elseif star>=3701 and star<=5700 then
			GiveItem ( role , 0 , 3885  , 1 , 4  )
		elseif star>=5701 and star<=7100 then
			GiveItem ( role , 0 , 3094  , 1 , 4  )
		elseif star>=7101 and star<=13100 then
			local el = math.random ( 1, 5 )
			if el==1  then
				GiveItem ( role , 0 , 2445  , 3 , 4 )
			elseif el==2	then
				GiveItem ( role , 0 , 3076  , 3 , 4 )
			elseif el==3	then
				GiveItem ( role , 0 , 0563  , 3 , 4 )
			elseif el==4	then	
				GiveItem ( role , 0 , 0583  , 3 , 4 )
			elseif el==5	then
				GiveItem ( role , 0 , 3050  , 3 , 4 )
			end
		elseif star>=13101 and star<=15100 then
			local el = math.random ( 1, 2 )
			if el==1  then
				GiveItem ( role , 0 , 0849  , 1 , 4 )
			elseif el==2  then
				GiveItem ( role , 0 , 0680  , 1 , 4 )
			end
		elseif star>=15101 and star<=19300then
			local el1= math.random ( 1, 6 )
			if el1==1  then
				GiveItem ( role , 0 , 2438  , 5 , 4 )
			elseif el1==2 then
				GiveItem ( role , 0 , 2419  , 3 , 4 )
			elseif el1==3 then
				GiveItem ( role , 0 , 2386  , 4 , 4 )
			elseif el1==4 then
				GiveItem ( role , 0 , 0179  , 1 , 4 )
			elseif el1==5 then
				GiveItem ( role , 0 , 3084  , 1 , 4 )
			elseif el1==6 then
				GiveItem ( role , 0 , 3085  , 1 , 4 )
			end
		elseif star>=19301 and star<=19600then
			local el1= math.random ( 1, 5 )
			if el1==1  then
				GiveItem ( role , 0 , 0863  , 1 , 4 )
				local message = cha_name.." open the Aladdin Parcel,he get the Gem of Rage" 
				Notice ( message )
			elseif el1==2 then
				GiveItem ( role , 0 , 0860  , 1 , 4 )
				local message1 = cha_name.." open the Aladdin Parcel,he get the Gem of the Wind" 
				Notice ( message1 )
			elseif el1==3 then
				GiveItem ( role , 0 , 0861  , 1 , 4 )
				local message2 = cha_name.." open the Aladdin Parcel,he get the Gem of Striking" 
				Notice ( message2 )
			elseif el1==4 then
				GiveItem ( role , 0 , 0862  , 1 , 4 )
				local message3 = cha_name.." open the Aladdin Parcel,he get the Gem of Colossus" 
				Notice ( message3 )
			elseif el1==5 then
				GiveItem ( role , 0 , 1012  , 1 , 4 )
				local message4 = cha_name.." open the Aladdin Parcel,he get the Gem of Soul" 
				Notice ( message4 )
			end

		elseif star==19601 then
			GiveItem ( role , 0 , 0192  , 1 , 4  )
			local message8= cha_name.." open the Aladdin Parcel,he get the Chest of Kylin" 
			Notice ( message8 )

		elseif star>=19601 and star<=20000 then	
			GiveItem ( role , 0 , 2224  , 1 , 4  )
			local message8= cha_name.." open the Aladdin Parcel,he get the Modern Apparel Chest" 
			Notice ( message8 )
		end
	
end


------------
------------
---- ���������� ��� �����-������
------------
------------


------
-- �������� ������� (id 5707)
------

function ItemUse_universebox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"������������ ����� � ���������. ���������� ������������ �������.")
		UseItemFailed ( role )
		return
	end
	
	local sc = math.random(1,100)
	
	if sc <= 30 then
		GiveItem ( role , 0 , 862 , 1 , 4 ) -- ������ 30%
	elseif sc <= 60 then
		GiveItem ( role , 0 , 863 , 1 , 4 ) -- ��� 30%
	elseif sc <= 75 then
		GiveItem ( role , 0 , 861 , 1 , 4 ) -- ������ 15%
	elseif sc <= 90 then
		GiveItem ( role , 0 , 860 , 1 , 4 ) -- ����� 15%
	else
		GiveItem ( role , 0 , 1012 , 1 , 4 ) -- ���� 10%
	end

	--local cha_name = GetChaDefaultName ( role )
	--local itemname = GetItemName ( ItemId )
	--Notice ( "����������� ������ " ..cha_name..", �� ��������� �������� ������ � �������� "..itemname )
end


------
-- �������� �� �������
------

function ItemUse_DublonScript( role , Item )

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end

	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet < 1 then
		SystemNotice(role, "����� ������� ��������, ���������� 1 ��������� ������ � �������.")
		UseItemFailed (role)
		return
	end
	
	local itemid = GetItemID(Item)

	-- 10 ��������
	if itemid == 6800 then
		--GiveItem ( role , 0 , 195 , 10 , 4 )
	-- 5 ��������
	elseif itemid == 6801 then
		--GiveItem ( role , 0 , 195 , 5 , 4 )
	-- 3 �������
	elseif itemid == 6802 then
		--GiveItem ( role , 0 , 195 , 3 , 4 )
	end
	
end


------
--	�������� �� ������������� ��������
------

function CanUseItem(role)

	return 1

	--[[local antiuse = GetChaStateLv ( role , 5 )
	
	if antiuse == 1 then 
		UseItemFailed ( role )
		return 0
	else
		AddState ( role, role, 5, 1, 1 )
		return 1
	end]]--

end


------
-- ������� ���������� �� ��� ��������������� ���������
------

function AddHp(role,hp_resume)

	local hp = GetChaAttr(role, ATTR_HP) 

	if hp <= 0 then 
	
		UseItemFailed ( role )
		return 0
		
	else
		
		hp = hp + hp_resume 
		mxhp = GetChaAttr(role,ATTR_MXHP) 
		
		if hp > mxhp then hp = mxhp end 
	
		SetCharaAttr(hp, role, ATTR_HP) 
		return 1
	
	end 

end

------
-- ������� ���������� �� ��� ��������������� ���������
------

function AddSp(role,sp_resume)

	local sp = GetChaAttr(role, ATTR_SP)

	if sp <= 0 then 
	
		UseItemFailed ( role )
		return 0
		
	else
		
		sp = sp + sp_resume 
		mxsp = GetChaAttr(role,ATTR_MXSP)  
		
		if sp > mxsp then sp = mxsp end
	
		SetCharaAttr(sp, role, ATTR_SP) 
		return 1
	
	end

end

-------
-- ������ ����� ����� ������� (ID=5716)
-------

function ItemUse_HZRYX ( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=0 then
		SystemNotice(role ,"������������ ���������� ����� � ���������. ���������� ������� ������")
		UseItemFailed ( role )
		return
	end

--	local s = DelBagItem ( role , 5716 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=30 then	
		GiveItem ( role , 0 , 4022 , 1 , 4 ) -- 30% 
		itemname = "��� �� ������"
	elseif sc <=69 then		
		GiveItem ( role , 0 , 2951 , 1 , 4 ) -- 39%
		itemname = "����� ������� �����"
	elseif sc <=99 then
		local Money_add = 300000
		AddMoney ( role , 0 , Money_add ) -- 30%
		itemname = "300 000 �������"
	else   
		GiveItem ( role , 0 , 3016 , 1 , 4 ) -- 1%
		itemname = "������ ������ �������� ������� ������� "
	end
	local cha_name = GetChaDefaultName ( role )
	local Guild_ID = GetChaGuildID(role)
	local Guild_name = GetGuildName( Guild_ID )
	Notice ( "������� " .. Guild_name .. "  �������� � �������������� �����. " ..cha_name.. " ��������� ���� � �������� "..itemname )

end


------
-- ������ � ��������� (ID=6799)
------

function ItemUse_CorallBox(role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end

	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet < 5 then
		SystemNotice(role, "����� ������� ������, ���������� 5 ��������� ����� � �������.")
		UseItemFailed (role)
		return
	end
	
	GiveItem ( role , 0 , 876 , 1 , 4 )  -- ������ ������ 5-�� ��.
	GiveItem ( role , 0 , 871 , 1 , 4 )  -- ������ ����� 5-�� ��.
	GiveItem ( role , 0 , 821 , 1 , 4 )  -- ������ ����� 5-�� ��.
	GiveItem ( role , 0 , 639 , 1 , 4 )  -- ������ ����� 5 ��.
	GiveItem ( role , 0 , 1022 , 1 , 4 ) -- �������������� ���������

end


------
-- ���������� ���� (ID=6797,6798)
------

function ItemUse_EasterEgg(role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	
	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet < 1 then
		SystemNotice(role, "����� ������� ����, ���������� ����� ���� �� ���� ��������� ������ � ���������")
		UseItemFailed (role)
		return
	end

	local itemid   = GetItemID(Item)
	local cha_type = GetChaTypeID(role) 
	
	local a = math.random(1,100)
	
	-- ������� ����
	
	if itemid == 6797 then
	
		if a <= 1 then
			--GiveItem ( role , 0 , 0195 , 2 , 4 ) -- ������ � 2 1%
		elseif a <= 2 then
			GiveItem ( role , 0 , 1860 , 2 , 4 ) -- ��������������� ����� � 2 1%
		elseif a <= 3 then
			GiveItem ( role , 0 , 1856 , 5 , 4 ) -- ����� �������� � 5 1%
		elseif a <= 4 then
			GiveItem ( role , 0 , 1857 , 5 , 4 ) -- ����������� � 5 1%
		elseif a <= 9 then
			GiveItem ( role , 0 , 1079 , 3 , 4 ) -- ������� � 3 5%
		elseif a <= 14 then
			GiveItem ( role , 0 , 1078 , 5 , 4 ) -- ������ ������� � 5 5%
		elseif a <= 19 then
			GiveItem ( role , 0 , 1085 , 3 , 4 ) -- ���� ������ � 3 5%
		elseif a <= 21 then
			GiveItem ( role , 0 , 0885 , 1 , 4 ) -- ��������� �������� � 1 2%
		elseif a <= 23 then
			GiveItem ( role , 0 , 0881 , 1 , 4 ) -- ����������� �������� � 1 2%
		elseif a <= 25 then
			GiveItem ( role , 0 , 0884 , 1 , 4 ) -- ������� �������� � 1 2%
		elseif a <= 27 then
			GiveItem ( role , 0 , 0887 , 1 , 4 ) -- �������� ���� � 1 2%
		elseif a <= 30 then
			GiveItem ( role , 0 , 2312 , 10 , 4 ) -- ����������� ���� � 10 3%
		elseif a <= 32 then
			AddMoney ( role , 0 , 500000 ) -- ������ � 500� 2%
		elseif a <= 35 then
			AddMoney ( role , 0 , 300000 ) -- ������ � 300� 3%
		elseif a <= 37 then
			GiveItem ( role , 0 , 3424 , 1 , 4 ) -- ������ �� ���� ������� � 1 2%
		elseif a <= 42 then
			GiveItem ( role , 0 , 0849 , 3 , 4 ) -- ����� ����� ������ � 3 5%
		elseif a <= 44 then
			GiveItem ( role , 0 , 3845 , 3 , 4 ) -- ������������ ����� � 3 2%
		elseif a <= 47 then
			GiveItem ( role , 0 , 3844 , 3 , 4 ) -- �������� ����� � 3 3%
		elseif a <= 48 then
			GiveItem ( role , 0 , 6798 , 1 , 4 ) -- ������� ���������� ���� � 1 1%
		elseif a <= 52 then
			GiveItem ( role , 0 , 6793 , 1 , 4 ) -- ������������ ����� � 1 4%
		elseif a <= 68 then
			GiveItem ( role , 0 , 3460 , 99 , 4 ) -- ����� � 99 16%
		elseif a <= 84 then
			GiveItem ( role , 0 , 3126 , 50 , 4 ) -- ��������� � 50 16%
		elseif a <= 100 then
			GiveItem ( role , 0 , 3133 , 50 , 4 ) -- ��������� ����� � 50 16%
		end
	
	-- ������� ����
	
	elseif itemid == 6798 then
	
		if a <= 2 then
			GiveItem ( role , 0 , 3457 , 1 , 4 ) -- ���� � 1 2%
		elseif a <= 3 then
			GiveItem ( role , 0 , 1134 , 1 , 4 ) -- ������ ����� � 1 1%
		elseif a <= 5 then
		---	GiveItem ( role , 0 , 0195 , 5 , 4 ) -- ������ � 5 2%
		elseif a <= 6 then
			GiveItem ( role , 0 , 2216 , 1 , 4 ) -- ����� ������ ������ � 1 2%
		elseif a <= 8 then
			GiveItem ( role , 0 , 3458 , 1 , 4 ) -- ������ ���������� � 1 2%
		elseif a <= 10 then
			GiveItem ( role , 0 , 5707 , 1 , 4 ) -- �������� ������� � 1 2%
		elseif a <= 13 then
			GiveItem ( role , 0 , 0885 , 1 , 4 ) -- ��������� �������� � 1 3%
		elseif a <= 15 then
			GiveItem ( role , 0 , 0938 , 1 , 4 ) -- ��������������� ������ � 1 2%
		elseif a <= 17 then
			GiveItem ( role , 0 , 0679 , 1 , 4 ) -- ���� ����� � 1 2%
		elseif a <= 19 then
			GiveItem ( role , 0 , 0609 , 1 , 4 ) -- ����������� �������� ���� � 1 2%
		elseif a <= 24 then
			GiveItem ( role , 0 , 6797 , 1 , 4 ) -- ������� ���������� ���� � 1 5%
		elseif a <= 29 then
			GiveItem ( role , 0 , 3095 , 4 , 4 ) -- ����� ��������� ���������� � 4 5%
		elseif a <= 32 then
			GiveItem ( role , 0 , 0849 , 6 , 4 ) -- ����� ����� ������ � 6 3%
		elseif a <= 36 then
			GiveItem ( role , 0 , 2383 , 50 , 4 ) -- �������� �������� � 50 4%
		elseif a <= 39 then
			GiveItem ( role , 0 , 3097 , 4 , 4 ) --  ������� ��������� ����� � 4 3%
		elseif a <= 44 then
			GiveItem ( role , 0 , 6793 , 1 , 4 ) --  ������������ ����� � 1 5%
		elseif a <= 62 then
			GiveItem ( role , 0 , 3460 , 99 , 4 ) -- ����� � 99 18%
		elseif a <= 80 then
			GiveItem ( role , 0 , 3126 , 50 , 4 ) -- ��������� � 50 18%
		elseif a <= 100 then
			GiveItem ( role , 0 , 3133 , 50 , 4 ) -- ��������� ����� � 50 20%
		end
	
	end

end

------
-- �������� � ����� 1 ��� 2013 �. (ID=6794,6795,6796)
------

function ItemUse_Workers(role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	
	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet < 1 then
		SystemNotice(role, "����� ������� �������, ���������� ����� ���� �� ���� ��������� ������ � ���������")
		UseItemFailed (role)
		return
	end

	local itemid   = GetItemID(Item)
	local cha_type = GetChaTypeID(role) 
	
	local a = math.random(1,100);
	local b = { 1 };
	local c = 1;
	
	-- ������ �����
	
	if itemid == 6794 then

		if a <= 60 then -- 60% 35 ��� ������

			b = { 799, 785, 770, 781 }
			c = math.random(1,4);
			
		elseif a <= 90 then -- 30% 45 ��� ������
			
			b = { 786, 793, 774, 771, 800, 782 }
			c = math.random(1,6);
			
		elseif a <= 99 then -- 9% 55 ��� ������
			
			b = { 794, 787, 783, 772, 775, 801 }
			c = math.random(1,6);
			
		else -- 1% 65 ��� ������
			
			b = { 788, 802, 773, 784, 776, 795 }
			c = math.random(1,6);
			
		end
		
		GiveItem ( role , 0 , b[c] , 1 , 12 )
	
	-- ������ ��������
	
	elseif itemid == 6795 then
	
		if a <= 60 then -- 60% 35 ��� �����

			b = { 803, 777, 789, 763 }
			c = math.random(1,4);
			
		elseif a <= 90 then -- 30% 45 ��� �����
			
			b = { 790, 764, 804, 796, 778, 767 }
			c = math.random(1,6);
			
		elseif a <= 99 then -- 9% 55 ��� �����
			
			b = { 791, 805, 779, 765, 768, 797 }
			c = math.random(1,6);
			
		else -- 1% 65 ��� �����
			
			b = { 806, 780, 792, 766, 769, 798 }
			c = math.random(1,6);
			
		end
		
		GiveItem ( role , 0 , b[c] , 1 , 12 )
		
	-- ������ ��������
	
	elseif itemid == 6796 then
	
		if a <= 60 then -- 60% 45 ������� ����

			b = { 653, 667, 740, 708 }
			c = math.random(1,4);
			
		elseif a <= 90 then -- 30% 55 ������� ����
			
			b = { 668, 655, 695, 709, 715, 728, 731, 743 }
			c = math.random(1,8);
			
		elseif a <= 99 then -- 9% 55 ��� ����
			
			b = { 808, 810, 813, 814, 877 }
			c = math.random(1,5);
			
		else -- 1% ����-������
			
			b = { 1126 }
			c = 1;
			
		end
		
		GiveItem ( role , 0 , b[c] , 1 , 18 )
	
	end

end

function ItemUse_gem_ras( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet <= 1 then
		SystemNotice(role, "����� ������� �������, ���������� ����� ���� �� ���� ��������� ������ � ���������")
		UseItemFailed (role)
		return
	end
	local ItemId = GetItemID(Item)
	if ItemId == 7718 then
		ItemGem_1 ( role , 0878 )
	elseif ItemId == 7719 then
		ItemGem_1 ( role , 0879 )
	elseif ItemId == 7720 then
		ItemGem_1 ( role , 0880 )
	elseif ItemId == 7721 then
		ItemGem_1 ( role , 0881 )
	elseif ItemId == 7722 then
		ItemGem_1 ( role , 0882 )
	elseif ItemId == 7723 then
		ItemGem_1 ( role , 0883 )
	elseif ItemId == 7724 then
		ItemGem_1 ( role , 0884 )
	elseif ItemId == 7725 then
		ItemGem_1 ( role , 0887 )
	end
end

function ItemUse_ref_ras( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet <= 1 then
		SystemNotice(role, "����� ������� �������, ���������� ����� ���� �� ���� ��������� ������ � ���������")
		UseItemFailed (role)
		return
	end
	local ItemId = GetItemID(Item)
	if ItemId == 7726 then
		ItemGem_1 ( role , 0885 )
	end
end

function ItemUse_chest_gem_new( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet <= 1 then
		SystemNotice(role, "����� ������� �������, ���������� ����� ���� �� ���� ��������� ������ � ���������")
		UseItemFailed (role)
		return
	end
	local rand1 = math.random(1,3)
	local rand2 = math.random(1,4)
	local rand3 = math.random(1,5)
	local ItemId = GetItemID(Item)
	if ItemId == 7715 then
		if rand1 == 1 then
			ItemGem_1 ( role , 5772 )
		elseif rand1 == 2 then
			ItemGem_1 ( role , 5773 )
		elseif rand1 == 3 then
			ItemGem_1 ( role , 5774 )
		end
	elseif ItemId == 7716 then
		if rand2 == 1 then
			ItemGem_1 ( role , 5772 )
		elseif rand2 == 2 then
			ItemGem_1 ( role , 5773 )
		elseif rand2 == 3 then
			ItemGem_1 ( role , 5774 )
		elseif rand2 == 4 then
			ItemGem_1 ( role , 5775 )
		end
	elseif ItemId == 7717 then
		if rand2 == 1 then
			ItemGem_1 ( role , 5750 )
		elseif rand2 == 2 then
			ItemGem_1 ( role , 5751 )
		elseif rand2 == 3 then
			ItemGem_1 ( role , 5752 )
		elseif rand2 == 4 then
			ItemGem_1 ( role , 5771 )
		end
	elseif ItemId == 7711 then
		if rand3 == 1 then
			ItemGem_1 ( role , 6817 )
		elseif rand3 == 2 then
			ItemGem_1 ( role , 6820 )
		elseif rand3 == 3 then
			ItemGem_1 ( role , 6823 )
		elseif rand3 == 4 then
			ItemGem_1 ( role , 6826 )
		elseif rand3 == 5 then
			ItemGem_1 ( role , 6829 )
		end
	elseif ItemId == 7712 then
		if rand3 == 1 then
			ItemGem_1 ( role , 6818 )
		elseif rand3 == 2 then
			ItemGem_1 ( role , 6821 )
		elseif rand3 == 3 then
			ItemGem_1 ( role , 6824 )
		elseif rand3 == 4 then
			ItemGem_1 ( role , 6827 )
		elseif rand3 == 5 then
			ItemGem_1 ( role , 6830 )
		end
	elseif ItemId == 7713 then
		if rand3 == 1 then
			ItemGem_1 ( role , 6819 )
		elseif rand3 == 2 then
			ItemGem_1 ( role , 6822 )
		elseif rand3 == 3 then
			ItemGem_1 ( role , 6825 )
		elseif rand3 == 4 then
			ItemGem_1 ( role , 6828 )
		elseif rand3 == 5 then
			ItemGem_1 ( role , 6831 )
		end
	elseif ItemId == 7714 then
		if rand3 == 1 then
			ItemGem_1 ( role , 7108 )
		elseif rand3 == 2 then
			ItemGem_1 ( role , 7109 )
		elseif rand3 == 3 then
			ItemGem_1 ( role , 7110 )
		elseif rand3 == 4 then
			ItemGem_1 ( role , 7111 )
		elseif rand3 == 5 then
			ItemGem_1 ( role , 7112 )
		end
	end
end

--ID7420	�������� ������
function ItemUse_barer( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"����� ������������ ������ ���������� ����� 4 ��������� ����� � ����� ���������.")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4938 , 30 , 4 )
	GiveItem ( role , 0 , 4957 , 30 , 4 )
	GiveItem ( role , 0 , 4976 , 30 , 4 )
	GiveItem ( role , 0 , 4974 , 10 , 4 )
end

--������� � ������
function ItemUse_chest_app (role, Item)

	local Item_CanGet = GetChaFreeBagGridNum (role)
	 if Item_CanGet < 4 then
		SystemNotice(role, "����� ������� ���� ������, ���������� 4 ��������� ������ � �������.")
		UseItemFailed (role)
		return
	end

	local itemid   = GetItemID(Item)
	local cha_type = GetChaTypeID(role) 

	-- ������ �������� � �������� � ���
	local Boxes = {}

	-- ����������� ������
	Boxes[7500] = {}
	Boxes[7500][1] = { 5041, 5045, 5049, 0 } -- ����
	Boxes[7500][2] = { 5042, 5046, 5050, 0 } -- ������
	Boxes[7500][3] = { 5043, 5047, 5051, 0 } -- ������
	Boxes[7500][4] = { 5044, 5048, 5052, 5056 } -- ���

	-- ������ �������
	Boxes[7501] = {}
	Boxes[7501][1] = { 5057, 5061, 5065, 0 } -- ����
	Boxes[7501][2] = { 5058, 5062, 5066, 0 } -- ������
	Boxes[7501][3] = { 5059, 5063, 5067, 0 } -- ������
	Boxes[7501][4] = { 5060, 5064, 5068, 5069 } -- ���

	-- �������� ������
	Boxes[7502] = {}
	Boxes[7502][1] = { 5075, 5076, 5077, 0 } -- ����
	Boxes[7502][3] = { 5075, 5076, 5077, 0 } -- ������

	-- ������ �������
	Boxes[7503] = {}
	Boxes[7503][1] = { 5081, 5082, 5083, 0 } -- ����
	Boxes[7503][3] = { 5081, 5082, 5083, 0 } -- ������

	-- ������ �����
	Boxes[7504] = {}
	Boxes[7504][1] = { 5078, 5079, 5080, 0 } -- ����
	Boxes[7504][3] = { 5078, 5079, 5080, 0 } -- ������

	-- ���������� ������
	Boxes[7505] = {}
	Boxes[7505][1] = { 5118, 5119, 5120, 5121 } -- ����

	-- ������������� ������
	Boxes[7506] = {}
	Boxes[7506][1] = { 5123, 5124, 5125, 5122 } -- ����

	-- ���������� ������
	Boxes[7507] = {}
	Boxes[7507][1] = { 5127, 5128, 5129, 0 } -- ����

	-- �������� ������
	Boxes[7508] = {}
	Boxes[7508][1] = { 5154, 5155, 5156, 0 } -- ����
	Boxes[7508][3] = { 5166, 5167, 5168, 0 } -- ������

	-- ���������� ������
	Boxes[7509] = {}
	Boxes[7509][1] = { 5157, 5158, 5159, 0 } -- ����
	Boxes[7509][3] = { 5169, 5170, 5171, 0 } -- ������

	-- ��������� ������ ������
	Boxes[7510] = {}
	Boxes[7510][1] = { 5160, 5161, 5162, 0 } -- ����

	-- ����������� ������ ������
	Boxes[7511] = {}
	Boxes[7511][1] = { 5205, 5206, 5207, 5220 } -- ����
	Boxes[7511][2] = { 5195, 5196, 5197, 5218 } -- ������
	Boxes[7511][3] = { 5202, 5203, 5204, 5219 } -- ������
	Boxes[7511][4] = { 5198, 5199, 5200, 5201 } -- ���

	-- ������ ����������� ������
	Boxes[7512] = {}
	Boxes[7512][1] = { 5221, 5222, 5223, 0 } -- ����

	-- ������ �����
	Boxes[7513] = {}
	Boxes[7513][1] = { 5224, 5225, 5226, 0 } -- ����

	-- ������ �����
	Boxes[7514] = {}
	Boxes[7514][1] = { 5227, 5228, 5229, 0 } -- ����
	Boxes[7514][3] = { 5241, 5242, 5243, 0 } -- ������

	-- �������������� ������
	Boxes[7515] = {}
	Boxes[7515][1] = { 5264, 5265, 5266, 0 } -- ����
	Boxes[7515][2] = { 5267, 5268, 5269, 0 } -- ������
	Boxes[7515][3] = { 5270, 5271, 5272, 0 } -- ������
	Boxes[7515][4] = { 5273, 5274, 5275, 0 } -- ���

	-- ��������� ������
	Boxes[7516] = {}
	Boxes[7516][1] = { 5287, 5288, 5289, 5290 } -- ����
	Boxes[7516][2] = { 5291, 5292, 5293, 5294 } -- ������
	Boxes[7516][3] = { 5295, 5296, 5297, 5298 } -- ������
	Boxes[7516][4] = { 5299, 5300, 5301, 5302 } -- ���

	-- ������������� ������
	Boxes[7517] = {}
	Boxes[7517][1] = { 5303, 5304, 5305, 0 } -- ����
	Boxes[7517][2] = { 5306, 5307, 5308, 0 } -- ������
	Boxes[7517][3] = { 5309, 5310, 5311, 0 } -- ������
	Boxes[7517][4] = { 5312, 5313, 5314, 0 } -- ���

	-- ������ ������
	Boxes[7518] = {}
	Boxes[7518][1] = { 5315, 5316, 5317, 5318 } -- ����
	Boxes[7518][2] = { 5319, 5320, 5321, 5322 } -- ������
	Boxes[7518][3] = { 5323, 5324, 5325, 5326 } -- ������
	Boxes[7518][4] = { 5327, 5328, 5329, 5330 } -- ���

	-- ������ ����
	Boxes[7519] = {}
	Boxes[7519][1] = { 5341, 5342, 5343, 0 } -- ����
	Boxes[7519][2] = { 5345, 5346, 5347, 0 } -- ������
	Boxes[7519][3] = { 5349, 5350, 5351, 0 } -- ������
	Boxes[7519][4] = { 5352, 5353, 5354, 5355 } -- ���

	-- ������ ������
	Boxes[7520] = {}
	Boxes[7520][1] = { 5356, 5357, 5358, 5359 } -- ����
	Boxes[7520][2] = { 5360, 5361, 5362, 5363 } -- ������
	Boxes[7520][3] = { 5364, 5365, 5366, 5367 } -- ������
	Boxes[7520][4] = { 5368, 5369, 5370, 5371 } -- ���

	-- ������ ���������
	Boxes[7521] = {}
	Boxes[7521][1] = { 5372, 5373, 5374, 5375 } -- ����
	Boxes[7521][2] = { 5376, 5377, 5378, 5379 } -- ������
	Boxes[7521][3] = { 5380, 5381, 5382, 5383 } -- ������
	Boxes[7521][4] = { 5384, 5385, 5386, 5387 } -- ���

	-- ����������� ������
	Boxes[7522] = {}
	Boxes[7522][1] = { 5388, 5389, 5390, 5391 } -- ����

	-- ������ ���������
	Boxes[7523] = {}
	Boxes[7523][1] = { 5404, 5405, 5406, 5436 } -- ����
	Boxes[7523][2] = { 5407, 5408, 5409, 5437 } -- ������
	Boxes[7523][3] = { 5410, 5411, 5412, 5438 } -- ������
	Boxes[7523][4] = { 5413, 5414, 5415, 5439 } -- ���

	-- ������ ������������� ������
	Boxes[7524] = {}
	Boxes[7524][1] = { 5422, 5423, 5440, 0 } -- ����
	Boxes[7524][2] = { 5424, 5425, 5441, 0 } -- ������

	-- ������ ������� ��������
	Boxes[7525] = {}
	Boxes[7525][1] = { 5432, 5433, 5444, 0 } -- ����
	Boxes[7525][2] = { 5434, 5435, 5445, 0 } -- ������

	-- ������ �������� �����
	Boxes[7526] = {}
	Boxes[7526][1] = { 5456, 5457, 5458, 5459 } -- ����
	Boxes[7526][2] = { 5460, 5461, 5462, 5463 } -- ������
	Boxes[7526][3] = { 5464, 5465, 5466, 5467 } -- ������
	Boxes[7526][4] = { 5468, 5469, 5470, 5471 } -- ���

	-- ������ ������� ���������
	Boxes[7527] = {}
	Boxes[7527][1] = { 5488, 5489, 5490, 0 } -- ����
	Boxes[7527][2] = { 5491, 5492, 5493, 0 } -- ������
	Boxes[7527][3] = { 5494, 5495, 5496, 0 } -- ������
	Boxes[7527][4] = { 5497, 5498, 5499, 5500 } -- ���

	-- ������ ���������
	Boxes[7528] = {}
	Boxes[7528][1] = { 5501, 5502, 5503, 0 } -- ����
	Boxes[7528][2] = { 5504, 5505, 5506, 0 } -- ������
	Boxes[7528][3] = { 5507, 5508, 5509, 0 } -- ������
	Boxes[7528][4] = { 5510, 5511, 5512, 5513 } -- ���

	-- ������ ����������
	Boxes[7529] = {}
	Boxes[7529][1] = { 5521, 5522, 5523, 5524 } -- ����
	Boxes[7529][2] = { 5525, 5526, 5527, 5528 } -- ������
	Boxes[7529][3] = { 5529, 5530, 5531, 5532 } -- ������
	Boxes[7529][4] = { 5533, 5534, 5535, 5536 } -- ���

	-- ������ ������
	Boxes[7530] = {}
	Boxes[7530][1] = { 5537, 5538, 5539, 5540 } -- ����
	Boxes[7530][2] = { 5541, 5542, 5543, 5544 } -- ������
	Boxes[7530][3] = { 5545, 5546, 5547, 5548 } -- ������
	Boxes[7530][4] = { 5549, 5550, 5551, 5552 } -- ���

	-- ������ �������
	Boxes[7531] = {}
	Boxes[7531][1] = { 5553, 5554, 5555, 5556 } -- ����
	Boxes[7531][2] = { 5557, 5558, 5559, 5560 } -- ������
	Boxes[7531][3] = { 5561, 5562, 5563, 5564 } -- ������
	Boxes[7531][4] = { 5565, 5566, 5567, 5568 } -- ���

	-- ������ �������������
	Boxes[7532] = {}
	Boxes[7532][1] = { 5569, 5570, 5571, 5572 } -- ����
	Boxes[7532][2] = { 5573, 5574, 5575, 5576 } -- ������

	-- ������ �������� ����
	Boxes[7533] = {}
	Boxes[7533][1] = { 5577, 5578, 5579, 5580 } -- ����
	Boxes[7533][2] = { 5581, 5582, 5583, 5584 } -- ������
	Boxes[7533][3] = { 5585, 5586, 5587, 5588 } -- ������
	Boxes[7533][4] = { 5589, 5590, 5591, 5592 } -- ���

	-- ��������� ������
	Boxes[7534] = {}
	Boxes[7534][1] = { 5593, 5594, 5595, 5596 } -- ����
	Boxes[7534][2] = { 5597, 5598, 5599, 5600 } -- ������
	Boxes[7534][3] = { 5601, 5602, 5603, 5604 } -- ������
	Boxes[7534][4] = { 5605, 5606, 5607, 5608 } -- ���

	-- ������ ���������
	Boxes[7535] = {}
	Boxes[7535][1] = { 5632, 5633, 5634, 5635 } -- ����
	Boxes[7535][2] = { 5628, 5629, 5630, 5631 } -- ������
	Boxes[7535][3] = { 5636, 5637, 5638, 5639 } -- ������
	Boxes[7535][4] = { 5640, 5641, 5642, 5643 } -- ���

	-- ���������� ������
	Boxes[7536] = {}
	Boxes[7536][1] = { 5651, 5652, 5653, 5654 } -- ����
	Boxes[7536][2] = { 5655, 5656, 5657, 5658 } -- ������
	Boxes[7536][3] = { 5659, 5660, 0, 0 } -- ������

	-- ������ �������� ����
	Boxes[7537] = {}
	Boxes[7537][1] = { 5661, 5662, 5663, 5664 } -- ����
	Boxes[7537][2] = { 5665, 5666, 5667, 5668 } -- ������
	Boxes[7537][3] = { 5669, 5670, 5671, 5672 } -- ������
	Boxes[7537][4] = { 5673, 5674, 5675, 5676 } -- ���

	-- ���������� ������
	Boxes[7538] = {}
	Boxes[7538][1] = { 5677, 5678, 5679, 5680 } -- ����
	Boxes[7538][2] = { 5681, 5682, 5683, 5684 } -- ������
	Boxes[7538][3] = { 5685, 5686, 5687, 5688 } -- ������
	Boxes[7538][4] = { 5689, 5690, 5691, 5692 } -- ���

	-- ������ ���������
	Boxes[7539] = {}
	Boxes[7539][1] = { 5726, 5727, 5728, 5729 } -- ����
	Boxes[7539][2] = { 5730, 5731, 5732, 5733 } -- ������
	Boxes[7539][3] = { 5734, 5735, 5736, 5737 } -- ������
	Boxes[7539][4] = { 5738, 5739, 5740, 5741 } -- ���

	-- ������ ������ ����
	Boxes[7540] = {}
	Boxes[7540][1] = { 5742, 5743, 5744, 5745 } -- ����
	Boxes[7540][2] = { 5746, 5747, 5748, 5749 } -- ������
	Boxes[7540][3] = { 5850, 5851, 5852, 5853 } -- ������
	Boxes[7540][4] = { 5854, 5855, 5856, 5857 } -- ���

	-- ����������� ������
	Boxes[7541] = {}
	Boxes[7541][1] = { 5898, 5899, 5900, 5901 } -- ����

	-- ������ ���������� ����
	Boxes[7542] = {}
	Boxes[7542][1] = { 6503, 6504, 6505, 6506 } -- ����
	Boxes[7542][2] = { 6503, 6507, 6505, 6506 } -- ������
	Boxes[7542][3] = { 6503, 6504, 6505, 6506 } -- ������
	Boxes[7542][4] = { 6503, 6504, 6505, 6506 } -- ���

	-- ���������� ������ ����������
	Boxes[7543] = {}
	Boxes[7543][1] = { 5905, 5906, 5907, 5908 } -- ����
	Boxes[7543][2] = { 5905, 5902, 5907, 5908 } -- ������
	Boxes[7543][3] = { 5905, 5906, 5907, 5908 } -- ������
	Boxes[7543][4] = { 5905, 5906, 5907, 5908 } -- ���

	-- ������ ����������
	Boxes[7544] = {}
	Boxes[7544][1] = { 5918, 5919, 5920, 5921 } -- ����
	Boxes[7544][2] = { 5918, 5903, 5920, 5921 } -- ������
	Boxes[7544][3] = { 5918, 5919, 5920, 5921 } -- ������
	Boxes[7544][4] = { 5918, 5919, 5920, 5921 } -- ���

	-- ������� ������ ����������
	Boxes[7545] = {}
	Boxes[7545][1] = { 5922, 5923, 5924, 5925 } -- ����
	Boxes[7545][2] = { 5922, 5904, 5924, 5925 } -- ������
	Boxes[7545][3] = { 5922, 5923, 5924, 5925 } -- ������
	Boxes[7545][4] = { 5922, 5923, 5924, 5925 } -- ���

	-- ������ ��������-�����
	Boxes[7546] = {}
	Boxes[7546][1] = { 5926, 5927, 5928, 5929 } -- ����
	Boxes[7546][2] = { 5930, 5931, 5932, 5933 } -- ������

	-- ������ ������
	Boxes[7547] = {}
	Boxes[7547][1] = { 5934, 5935, 5936, 5937 } -- ����
	Boxes[7547][2] = { 5938, 5939, 5940, 0 } -- ������
	Boxes[7547][3] = { 5941, 5942, 5943, 0 } -- ������
	Boxes[7547][4] = { 5944, 5962, 5963, 5964 } -- ���

	-- ������������� ������ ������
	Boxes[7548] = {}
	Boxes[7548][1] = { 5945, 5946, 5947, 5948 } -- ����
	Boxes[7548][2] = { 5949, 5950, 5951, 5952 } -- ������
	Boxes[7548][3] = { 5953, 5954, 5955, 5956 } -- ������
	Boxes[7548][4] = { 5957, 5958, 5959, 5960 } -- ���

	-- ������ ���������� ����
	Boxes[7549] = {}
	Boxes[7549][1] = { 5965, 5966, 5967, 5968 } -- ����
	Boxes[7549][2] = { 5965, 5969, 5967, 5968 } -- ������
	Boxes[7549][3] = { 5965, 5966, 5967, 5968 } -- ������
	Boxes[7549][4] = { 5965, 5966, 5967, 5968 } -- ���

	-- ������ ������ ������
	Boxes[7550] = {}
	Boxes[7550][1] = { 5970, 5971, 5972, 5973 } -- ����
	Boxes[7550][3] = { 5978, 5979, 5980, 5981 } -- ������

	-- ������ ����������
	Boxes[7551] = {}
	Boxes[7551][1] = { 5992, 5993, 5994, 0 } -- ����

	-- 	������ �������
	Boxes[7552] = {}
	Boxes[7552][1] = { 6350, 6351, 6352, 6353 } -- ����
	Boxes[7552][2] = { 6354, 6355, 6356, 6357 } -- ������

	-- ������ �����
	Boxes[7553] = {}
	Boxes[7553][1] = { 6362, 6363, 6364, 6365 } -- ����
	Boxes[7553][2] = { 6366, 6364, 6365, 0 } -- ������
	Boxes[7553][3] = { 6363, 6364, 6365, 0 } -- ������
	Boxes[7553][4] = { 6363, 6364, 6365, 0 } -- ���

	-- ������ ��������
	Boxes[7554] = {}
	Boxes[7554][1] = { 6386, 6387, 6388, 6389 } -- ����

	-- ������ ������
	Boxes[7555] = {}
	Boxes[7555][1] = { 6395, 6396, 6397, 0 } -- ����

	-- ������ ����
	Boxes[7556] = {}
	Boxes[7556][1] = { 6398, 6399, 6400, 6401 } -- ����
	Boxes[7556][2] = { 6398, 6402, 6400, 6401 } -- ������
	Boxes[7556][3] = { 6398, 6399, 6400, 6401 } -- ������
	Boxes[7556][4] = { 6398, 6399, 6400, 6401 } -- ���

	-- ������ �����
	Boxes[7557] = {}
	Boxes[7557][1] = { 6403, 6404, 6405, 6406 } -- ����
	Boxes[7557][2] = { 6403, 6407, 6405, 6406 } -- ������
	Boxes[7557][3] = { 6403, 6404, 6405, 6406 } -- ������
	Boxes[7557][4] = { 6403, 6404, 6405, 6406 } -- ���

	-- ������ ���������
	Boxes[7558] = {}
	Boxes[7558][1] = { 6408, 6409, 6410, 0 } -- ����
	Boxes[7558][2] = { 6411, 6409, 6410, 0 } -- ������
	Boxes[7558][3] = { 6408, 6409, 6410, 0 } -- ������
	Boxes[7558][4] = { 6408, 6409, 6410, 0 } -- ���

	-- ������ ��������
	Boxes[7559] = {}
	Boxes[7559][1] = { 6412, 6413, 6414, 6415 } -- ����
	Boxes[7559][2] = { 6412, 6416, 6414, 6415 } -- ������
	Boxes[7559][3] = { 6412, 6413, 6414, 6415 } -- ������
	Boxes[7559][4] = { 6412, 6413, 6414, 6415 } -- ���

	-- ������ ��������
	Boxes[7560] = {}
	Boxes[7560][1] = { 6417, 6418, 6419, 6420 } -- ����
	Boxes[7560][2] = { 6417, 6421, 6419, 6420 } -- ������
	Boxes[7560][3] = { 6417, 6418, 6419, 6420 } -- ������
	Boxes[7560][4] = { 6417, 6418, 6419, 6420 } -- ���

	-- ������ �������
	Boxes[7561] = {}
	Boxes[7561][1] = { 6422, 6423, 6424, 6425 } -- ����
	Boxes[7561][2] = { 6422, 6426, 6424, 6425 } -- ������
	Boxes[7561][3] = { 6422, 6423, 6424, 6425 } -- ������
	Boxes[7561][4] = { 6422, 6423, 6424, 6425 } -- ���

	-- ������ ���
	Boxes[7562] = {}
	Boxes[7562][1] = { 6427, 6428, 6429, 6430 } -- ����
	Boxes[7562][2] = { 6427, 6431, 6429, 6430 } -- ������
	Boxes[7562][3] = { 6427, 6428, 6429, 6430 } -- ������
	Boxes[7562][4] = { 6427, 6428, 6429, 6430 } -- ���

	-- ������ ����
	Boxes[7563] = {}
	Boxes[7563][1] = { 6432, 6433, 6434, 6435 } -- ����
	Boxes[7563][2] = { 6432, 6436, 6434, 6435 } -- ������
	Boxes[7563][3] = { 6432, 6433, 6434, 6435 } -- ������
	Boxes[7563][4] = { 6432, 6433, 6434, 6435 } -- ���

	-- ������ ��������� ��������
	Boxes[7564] = {}
	Boxes[7564][1] = { 6437, 6438, 6439, 6440 } -- ����
	Boxes[7564][2] = { 6437, 6441, 6439, 6440 } -- ������
	Boxes[7564][3] = { 6437, 6438, 6439, 6440 } -- ������
	Boxes[7564][4] = { 6437, 6438, 6439, 6440 } -- ���

	-- ����������� ������
	Boxes[7565] = {}
	Boxes[7565][1] = { 6442, 6443, 6444, 6445 } -- ����
	Boxes[7565][2] = { 6442, 6446, 6444, 6445 } -- ������
	Boxes[7565][3] = { 6442, 6443, 6444, 6445 } -- ������
	Boxes[7565][4] = { 6442, 6443, 6444, 6445 } -- ���

	-- ������ ������
	Boxes[7566] = {}
	Boxes[7566][1] = { 6447, 6448, 6449, 6450 } -- ����

	-- ������ �����������
	Boxes[7567] = {}
	Boxes[7567][1] = { 6451, 6453, 6452, 6454 } -- ����
	Boxes[7567][3] = { 6451, 6453, 6452, 6454 } -- ������
	Boxes[7567][4] = { 6451, 6453, 6452, 6454 } -- ���

	-- ������ �����
	Boxes[7568] = {}
	Boxes[7568][1] = { 6463, 6464, 6465, 6466 } -- ����
	Boxes[7568][2] = { 6467, 6468, 6469, 6470 } -- ������
	Boxes[7568][3] = { 6471, 6472, 6473, 6474 } -- ������
	Boxes[7568][4] = { 5616, 5617, 5618, 5619 } -- ���

	-- ������ �������
	Boxes[7569] = {}
	Boxes[7569][1] = { 6475, 6476, 6477, 6478 } -- ����

	-- ������ �������
	Boxes[7570] = {}
	Boxes[7570][1] = { 6499, 6500, 6501, 6502 } -- ����

	-- ������ ��������� �����
	Boxes[7571] = {}
	Boxes[7571][4] = { 5138, 5139, 5140, 5141 } -- ���

	-- ������ �����
	Boxes[7572] = {}
	Boxes[7572][4] = { 5134, 5135, 5136, 5137 } -- ���

	-- ������� ������ ������
	Boxes[7573] = {}
	Boxes[7573][4] = { 5130, 5131, 5132, 5133 } -- ���

	-- ����������� ������
	Boxes[7574] = {}
	Boxes[7574][4] = { 5020, 5024, 5032, 5037 } -- ���

	-- ������ �����
	Boxes[7575] = {}
	Boxes[7575][4] = { 5016, 5028, 5036, 0 } -- ���

	-- ������ ���
	Boxes[7576] = {}
	Boxes[7576][4] = { 5260, 5261, 5262, 5263 } -- ���

	-- ���������� ������
	Boxes[7577] = {}
	Boxes[7577][3] = { 5248, 5249, 5250, 5251 } -- ������
	Boxes[7577][4] = { 5256, 5257, 5258, 5259 } -- ���

	-- ��������� ������
	Boxes[7578] = {}
	Boxes[7578][3] = { 5244, 5245, 5246, 5247 } -- ������
	Boxes[7578][4] = { 5252, 5253, 5254, 5255 } -- ���

	-- �������� ������ �������
	Boxes[7579] = {}
	Boxes[7579][4] = { 5191, 5192, 5193, 5194 } -- ���

	-- ������ ������������ ����
	Boxes[7580] = {}
	Boxes[7580][4] = { 5187, 5188, 5189, 5190 } -- ���

	-- �������� ������ ���
	Boxes[7581] = {}
	Boxes[7581][4] = { 5183, 5184, 5185, 5186 } -- ���

	-- ������ ��������
	Boxes[7582] = {}
	Boxes[7582][4] = { 5179, 5180, 5181, 0 } -- ���

	-- ������ ����
	Boxes[7583] = {}
	Boxes[7583][4] = { 5175, 5177, 5178, 0 } -- ���

	-- ������ �������� ������
	Boxes[7584] = {}
	Boxes[7584][4] = { 5428, 5429, 5430, 5431 } -- ���

	-- ������ ��������
	Boxes[7585] = {}
	Boxes[7585][3] = { 5416, 5417, 5418, 0 } -- ������
	Boxes[7585][4] = { 5419, 5420, 5421, 0 } -- ���

	-- ������ ��������
	Boxes[7586] = {}
	Boxes[7586][4] = { 5400, 5401, 5402, 5403 } -- ���

	-- ������ �������
	Boxes[7587] = {}
	Boxes[7587][2] = { 5514, 5515, 5516, 0 } -- ������
	Boxes[7587][4] = { 5517, 5518, 5519, 0 } -- ���

	-- ������ ������
	Boxes[7588] = {}
	Boxes[7588][4] = { 5646, 5647, 5648, 5649 } -- ���

	-- ������ ������
	Boxes[7589] = {}
	Boxes[7589][3] = { 5986, 5987, 5988, 5989 } -- ������
	Boxes[7589][4] = { 5986, 5987, 5988, 5989 } -- ���

	-- 	������ ������� ������
	Boxes[7590] = {}
	Boxes[7590][2] = { 5974, 5975, 5976, 5977 } -- ������
	Boxes[7590][4] = { 5982, 5983, 5984, 5985 } -- ���

	-- ������ ���
	Boxes[7591] = {}
	Boxes[7591][4] = { 5913, 5914, 5915, 5916 } -- ���

	-- ������ ������� ��������
	Boxes[7592] = {}
	Boxes[7592][3] = { 6378, 6379, 6380, 6381 } -- ������
	Boxes[7592][4] = { 6382, 6383, 6384, 6385 } -- ���

	-- ������ ������
	Boxes[7593] = {}
	Boxes[7593][3] = { 6455, 6456, 6457, 6458 } -- ������
	Boxes[7593][4] = { 6455, 6456, 6457, 6458 } -- ���

	-- ������ �����������������
	Boxes[7594] = {}
	Boxes[7594][3] = { 5015, 5023, 5031, 0 } -- ������

	-- ������� ������ ����
	Boxes[7595] = {}
	Boxes[7595][3] = { 5019, 5027, 5035, 0 } -- ������

	-- ������ �������
	Boxes[7596] = {}
	Boxes[7596][3] = { 5084, 5085, 5086, 0 } -- ������

	-- ������ �� ���� �����
	Boxes[7597] = {}
	Boxes[7597][3] = { 5087, 5088, 5089, 0 } -- ������

	-- ������ �������
	Boxes[7598] = {}
	Boxes[7598][3] = { 5090, 5091, 5092, 0 } -- ������

	-- �������� ������
	Boxes[7599] = {}
	Boxes[7599][3] = { 5093, 5094, 5095, 0 } -- ������

	-- ����������� ������
	Boxes[7600] = {}
	Boxes[7600][3] = { 5096, 5097, 5098, 0 } -- ������

	-- ������� ������
	Boxes[7601] = {}
	Boxes[7601][3] = { 5142, 5143, 5144, 5145 } -- ������

	-- ������ ���������� ���������
	Boxes[7602] = {}
	Boxes[7602][3] = { 5146, 5147, 5148, 5149 } -- ������

	-- ����������� ������
	Boxes[7603] = {}
	Boxes[7603][3] = { 5150, 5151, 5152, 5153 } -- ������

	-- �����-����� ������ ������
	Boxes[7604] = {}
	Boxes[7604][3] = { 5172, 5173, 5174, 0 } -- ������

	-- ����������� ������
	Boxes[7605] = {}
	Boxes[7605][3] = { 5396, 5397, 5398, 5399 } -- ������

	-- �������� ������� ������
	Boxes[7606] = {}
	Boxes[7606][3] = { 5426, 5427, 5438, 0 } -- ������

	-- ������� ������ �����
	Boxes[7607] = {}
	Boxes[7607][3] = { 5909, 5910, 5911, 5912 } -- ������

	-- ������ ��������
	Boxes[7608] = {}
	Boxes[7608][3] = { 6358, 6359, 6360, 6361 } -- ������

	-- ������ ������
	Boxes[7609] = {}
	Boxes[7609][3] = { 6367, 6368, 6369, 0 } -- ������

	-- ����������� ������
	Boxes[7610] = {}
	Boxes[7610][3] = { 6370, 6371, 6372, 6373 } -- ������

	-- ����������� ������
	Boxes[7611] = {}
	Boxes[7611][3] = { 6374, 6375, 6376, 6377 } -- ������

	-- ����� ������
	Boxes[7612] = {}
	Boxes[7612][3] = { 6483, 6484, 6485, 6486 } -- ������

	-- �������������� ������
	Boxes[7613] = {}
	Boxes[7613][3] = { 6495, 6496, 6497, 6498 } -- ������

	-- ������ ������������ ���������
	Boxes[7614] = {}
	Boxes[7614][2] = { 5014, 5022, 5030, 0 } -- ������

	-- ������ ������ ���������
	Boxes[7615] = {}
	Boxes[7615][2] = { 5018, 5026, 5034, 0 } -- ������

	-- ������ ��������� ��������
	Boxes[7616] = {}
	Boxes[7616][2] = { 5107, 5108, 5109, 0 } -- ������

	-- ������������ ������ ������
	Boxes[7617] = {}
	Boxes[7617][2] = { 5110, 5111, 5112, 5113 } -- ������

	-- �������� ������ ����������
	Boxes[7618] = {}
	Boxes[7618][2] = { 5115, 5116, 5117, 0 } -- ������

	-- ����� ������
	Boxes[7619] = {}
	Boxes[7619][2] = { 5163, 5164, 5165, 0 } -- ������

	-- ������ ��������
	Boxes[7620] = {}
	Boxes[7620][2] = { 5230, 5231, 5232, 5233 } -- ������

	-- ������ ���������
	Boxes[7621] = {}
	Boxes[7621][2] = { 5234, 5235, 5236, 5237 } -- ������

	-- ������ ������
	Boxes[7622] = {}
	Boxes[7622][2] = { 5238, 5239, 5240, 0 } -- ������

	-- ������ �������
	Boxes[7623] = {}
	Boxes[7623][2] = { 5392, 5393, 5394, 5395 } -- ������

	-- ������ �����������
	Boxes[7624] = {}
	Boxes[7624][2] = { 6390, 6391, 6392, 6393 } -- ������

	-- ���������� ������
	Boxes[7625] = {}
	Boxes[7625][2] = { 6459, 6460, 6461, 6462 } -- ������

	-- ������ ��������
	Boxes[7626] = {}
	Boxes[7626][2] = { 6479, 6480, 6481, 6482 } -- ������

	-- ������ ��������
	Boxes[7627] = {}
	Boxes[7627][2] = { 6491, 6492, 6493, 6494 } -- ������

	-- ������ ���������
	Boxes[7628] = {}
	Boxes[7628][2] = { 6509, 6510, 6511, 0 } -- ������

	-- ������ ��������
	if Boxes[itemid] ~= nil then
		if Boxes[itemid][cha_type] ~= nil then
			for item in Boxes[itemid][cha_type] do
				local apparel = Boxes[itemid][cha_type][item]
				if apparel ~= nil and apparel > 0 then GiveItem (role, 0, apparel, 1, 4) end
			end
		else
			SystemNotice(role, "� ������� ��� ��������� ��� ���")
			GiveItem (role, 0, itemid, 1, 4)
		end
	else
		SystemNotice(role, "����������� ������")
		GiveItem (role, 0, itemid, 1, 4)
	end
end


--����������� �����
function ItemUse_CookBlurry_test ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 2302 then
		SystemNotice(role ,"����� ������������ ������ �� ������� ���������")
		UseItemFailed ( role )
		return
	end

	local Cauldron_lvl = GetItemAttr(Item, ITEMATTR_VAL_STR)
	local Cauldron_maxproch = GetItemAttr(Item, ITEMATTR_MAXENERGY)
	local Cauldron_exp = GetItemAttr(Item, ITEMATTR_ENERGY)
	local Cauldron_proch = GetItemAttr(Item, ITEMATTR_URE)

	local ingr1 = GetItemAttr(Item_Traget, ITEMATTR_VAL_STR)
	local ingr2 = GetItemAttr(Item_Traget, ITEMATTR_VAL_CON)
	local ingr3 = GetItemAttr(Item_Traget, ITEMATTR_VAL_DEX)
	local item_polych = GetItemAttr(Item_Traget, ITEMATTR_VAL_AGI)
	local lvl_cook = GetItemAttr(Item_Traget, ITEMATTR_URE)
	local count_use = GetItemAttr(Item_Traget, ITEMATTR_VAL_STA)
	local mf_count = GetItemAttr(Item_Traget, ITEMATTR_MAXURE)
	local Num_paper = GetItemForgeParam ( Item_Traget , 1 )
	Num_paper = TansferNum ( Num_paper )
	local ingr1_count = GetNum_Part2 ( Num_paper )
	local ingr2_count = GetNum_Part4 ( Num_paper )
	local ingr3_count = GetNum_Part6 ( Num_paper )
	local skill_lv = GetSkillLv(role, 0339)
	if skill_lv < lvl_cook then
		SystemNotice(role ,"������� ������ ������ ���������, ���� ��� ������� �������!")
		UseItemFailed ( role )
		return
	end
	if count_use == 0 then
		SystemNotice(role ,"������������ ������ �� ��������, ��������� �������� �� ��� ������������� ���!")
		UseItemFailed ( role )
		return
	end
	local ret1 = proc_ingridient(role,ingr1,ingr1_count)
	local ret2 = proc_ingridient(role,ingr2,ingr2_count)
	local ret3 = proc_ingridient(role,ingr3,ingr3_count)
	local ret4 = proc_ingridient(role,0855,mf_count)
	if ret1 == 0 or ret2 == 0 or ret3 == 0 or ret4 == 0 then
		UseItemFailed ( role )
		return
	end
	local dell1 = dell_ingridient(role,ingr1,ingr1_count)
	local dell2 = dell_ingridient(role,ingr2,ingr2_count)
	local dell3 = dell_ingridient(role,ingr3,ingr3_count)
	local dell4 = dell_ingridient(role,0855,mf_count)
	if dell1 == 0 or dell2 == 0 or dell3 == 0 or dell4 == 0 then
		UseItemFailed ( role )
		return
	end
	local rand = math.random(1,3)
	local good = 0
	local item_polych_count = 0
	-- ������� ����� ������ ��� ����� ������ �������: ���� ������ 100%
	if Cauldron_lvl >= lvl_cook then
		item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
		if item_polych_count >= 5 then
			item_polych_count = 4
		end
		item_polych_count = item_polych_count + 2
		good = 1
	end
	-- ������� ����� ������ ������ �������
	if Cauldron_lvl < lvl_cook then
		local razn = 0
		razn = lvl_cook - Cauldron_lvl
		local luck = math.random(1,100)
		if razn == 1 then
			if luck >= 1 and luck <= 95 then
				item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
				if item_polych_count >= 5 then
					item_polych_count = 4
				end
				item_polych_count = item_polych_count + 1
				good = 1
			else
				item_polych_count = 1
				good = 0
			end
		elseif razn == 2 then
			if luck >= 1 and luck <= 90 then
				item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
				if item_polych_count >= 5 then
					item_polych_count = 4
				end
				item_polych_count = item_polych_count + 1
				good = 1
			else
				item_polych_count = 1
				good = 0
			end
		elseif razn == 3 then
			if luck >= 1 and luck <= 85 then
				item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
				if item_polych_count >= 5 then
					item_polych_count = 4
				end
				item_polych_count = item_polych_count + 1
				good = 1
			else
				item_polych_count = 1
				good = 0
			end
		elseif razn == 4 then
			if luck >= 1 and luck <= 80 then
				item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
				if item_polych_count >= 5 then
					item_polych_count = 4
				end
				item_polych_count = item_polych_count + 1
				good = 1
			else
				item_polych_count = 1
				good = 0
			end
		elseif razn == 5 then
			if luck >= 1 and luck <= 75 then
				item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
				if item_polych_count >= 5 then
					item_polych_count = 4
				end
				item_polych_count = item_polych_count + 1
				good = 1
			else
				good = 0
			end
		elseif razn == 6 then
			if luck >= 1 and luck <= 70 then
				item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
				if item_polych_count >= 5 then
					item_polych_count = 4
				end
				item_polych_count = item_polych_count + 1
				good = 1
			else
				item_polych_count = 1
				good = 0
			end
		end
	end
	local new_count_use = count_use - 1
	SetItemAttr(Item_Traget, ITEMATTR_VAL_STA, new_count_use)
	GiveItem ( role, 0 , item_polych , item_polych_count , 4 )
	-------------------
	-- ������ �����
	-------------------
	local m1 = -1
	local m2 = -1
	m1, m2 = MakeItem ( role , 1067  , 1 , 4 )
	local Cauldronfinal = GetChaItem ( role , 2 , m2 )
	SetItemAttr(Cauldronfinal, ITEMATTR_VAL_STR , Cauldron_lvl)
	SetItemAttr(Cauldronfinal, ITEMATTR_MAXENERGY , Cauldron_maxproch)
	SetItemAttr(Cauldronfinal, ITEMATTR_URE , Cauldron_proch)
	SetItemAttr(Cauldronfinal, ITEMATTR_ENERGY , Cauldron_exp)
	-- �����\������ ��������� �����
	if good == 1 then
		Cauldron_exp = Cauldron_exp + Cauldron_lvl
	else
		Cauldron_exp = Cauldron_exp + 1
	end
	-- ������� ���������
	Cauldron_proch = Cauldron_proch - 50 * Cauldron_lvl
	if Cauldron_proch <= 0 then
		Cauldron_proch = 0
	end
	if Cauldron_exp >= 10000 then
		Cauldron_exp = 10000
	end
	-- ��������� ������
	if Cauldron_exp >= Cauldron_lvl * Cauldron_lvl * 100 then
		Cauldron_lvl = Cauldron_lvl + 1
		SetItemAttr(Cauldronfinal, ITEMATTR_VAL_STR , Cauldron_lvl)
		SystemNotice( role , "�����������, ������� ������ ����������� �������!")
		Cauldron_exp = 0
	end
	-- ��������� ���������� ����� � ���������
	SetItemAttr(Cauldronfinal, ITEMATTR_URE , Cauldron_proch)
	SetItemAttr(Cauldronfinal, ITEMATTR_ENERGY , Cauldron_exp)
end

--ID0938	��������������� ������
function Jz_Script_Nebesa(role, Item )
	local i = CheckBagItem(role,938)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ ����� ������������ �������. ����������, ������������ ���� �������� � ����")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,938,1)
			if j == 1 then
				GoTo( role,  1602 , 908 , "jialebi")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID6205	����� �� ������ ����
function ItemUse_DDJP(role, Item )
	local i = CheckBagItem(role,6205)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ ����� ������������ �������. ����������, ������������ ���� �������� � ����")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,6205,1)
			if j == 1 then
				SetRecord(role, 1636)
				MoveCity(role,"������ �������")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--������ � ��������� ������������
function ItemUse_remont_chest(role,Item)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"����� ������������ ������ ���������� ����� 1 ��������� ���� � ����� ���������.")
		UseItemFailed ( role )
		return
	end
	local lv = 0
	local r1 = 0
	local r2 = 0
	local ItemId = GetItemID(Item)
	r1, r2 = MakeItem(role, 2236, 1 , 4)
	local Item_rem = GetChaItem(role, 2, r2)
	if ItemId == 7301 then
		lv = 2
	elseif ItemId == 7302 then
		lv = 3
	elseif ItemId == 7303 then
		lv = 4
	elseif ItemId == 7304 then
		lv = 5
	elseif ItemId == 7305 then
		lv = 6
	elseif ItemId == 7306 then
		lv = 7
	end
	SetItemAttr(Item_rem, ITEMATTR_VAL_STR, lv)
end

--��
function ItemUse_Im_Box(role,Item)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"����� ������������ ������ ���������� ����� 1 ��������� ���� � ����� ���������.")
		UseItemFailed ( role )
		return
	end
	local ItemId = GetItemID(Item)
	-- �������� ���� �����
	if ItemId == 7758 then
		GiveItem ( role , 0 , 1124  , 1 , 19 )
	-- �������� ���� �����
	elseif ItemId == 7759 then
		GiveItem ( role , 0 , 1125  , 1 , 20 )
	-- �������� ���� �����
	elseif ItemId == 7760 then
		GiveItem ( role , 0 , 1126  , 1 , 15 )
	end
end

--VIP
function ItemUse_vip_rasspiska(role,Item)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"����� ������������ ������ ���������� ����� 1 ��������� ���� � ����� ���������.")
		UseItemFailed ( role )
		return
	end
	local ItemId = GetItemID(Item)
	-- VIP �������� ������ ������
	if ItemId == 7307 then
		GiveItem ( role , 0 , 7307  , 1 , 4 )
	-- VIP ��������(3 ���)
	elseif ItemId == 7308 then
		GiveItem ( role , 0 , 7308  , 1 , 4 )
	-- VIP ��������(7 ����)
	elseif ItemId == 7309 then
		GiveItem ( role , 0 , 7309  , 1 , 4 )
	end
end

--	6203	������
function ItemUse_HANBAO ( role , Item )
	local statelv = 4
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"� ������ ������ �� ��� ����������� ����� �������������, ���������� �������� �������.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime ) 
	end
end 

--	6204	������� ��������
function ItemUse_KAORUZHU ( role , Item )
	local statelv = 5
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"� ������ ������ �� ��� ����������� ����� �������������, ���������� �������� �������.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime ) 
	end
end 

--ID7422	���� ������������
function ItemUse_feniks( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 7 then
		SystemNotice(role ,"����� ������������ ������ ���������� ����� 7 ��������� ����� � ����� ���������.")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1358, 30 , 4 )
	GiveItem ( role , 0 , 4730, 30 , 4 )
	GiveItem ( role , 0 , 2619, 30 , 4 )
	GiveItem ( role , 0 , 1087, 30 , 4 )
	GiveItem ( role , 0 , 1088, 20 , 4 )
	GiveItem ( role , 0 , 1087, 20 , 4 )
	GiveItem ( role , 0 , 1089, 15 , 4 )
end

--ID7703	������ ������������ �������
function Stone_argcity(role, Item )
	local i = CheckBagItem(role,4602)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			MoveCity(role,"Argent City")
			return
		end
	else
		UseItemFailed ( role )
	end
end

--ID7704	������ ������������ ������
function Stone_ledcity(role, Item )
	local i = CheckBagItem(role,4604)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			MoveCity(role,"Icicle Castle")
			return
		end
	else
		UseItemFailed ( role )
	end
end

--ID7705	������ ������������ �������
function Stone_shacity(role, Item )
	local i = CheckBagItem(role,4603)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "������������ - ������������ �������. ����������, ���������� ��������� �� � ��")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			MoveCity(role,"Shaitan City")
			return
		end
	else
		UseItemFailed ( role )
	end
end

--ID7753	����� ��� 2 ���������(����)
function ItemUse_2gen_str( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	gen2 = {}
	gen2[1] = 231
	gen2[2] = 232
	gen2[3] = 233
	gen2[4] = 234
	gen2[5] = 235
	gen2[6] = 236
	gen2[7] = 237
	gen2[8] = 681
	local i = math.random(1,8)
	
	local r1,r2 = MakeItem ( role , gen2[i]  , 1 , 4 )
	GiveItem ( role , 0 , 608 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	str_JLone = 20
	local new_lv = str_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--ID7754	����� ��� 2 ���������(������.)
function ItemUse_2gen_con( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	gen2 = {}
	gen2[1] = 231
	gen2[2] = 232
	gen2[3] = 233
	gen2[4] = 234
	gen2[5] = 235
	gen2[6] = 236
	gen2[7] = 237
	gen2[8] = 681
	local i = math.random(1,8)
	
	local r1,r2 = MakeItem ( role , gen2[i]  , 1 , 4 )
	GiveItem ( role , 0 , 608 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	con_JLone = 20
	local new_lv = con_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--ID7755	����� ��� 2 ���������(����.)
function ItemUse_2gen_agi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	gen2 = {}
	gen2[1] = 231
	gen2[2] = 232
	gen2[3] = 233
	gen2[4] = 234
	gen2[5] = 235
	gen2[6] = 236
	gen2[7] = 237
	gen2[8] = 681
	local i = math.random(1,8)
	
	local r1,r2 = MakeItem ( role , gen2[i]  , 1 , 4 )
	GiveItem ( role , 0 , 608 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	agi_JLone = 20
	local new_lv = agi_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--ID7756	����� ��� 2 ���������(����.)
function ItemUse_2gen_acc( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	gen2 = {}
	gen2[1] = 231
	gen2[2] = 232
	gen2[3] = 233
	gen2[4] = 234
	gen2[5] = 235
	gen2[6] = 236
	gen2[7] = 237
	gen2[8] = 681
	local i = math.random(1,8)
	
	local r1,r2 = MakeItem ( role , gen2[i]  , 1 , 4 )
	GiveItem ( role , 0 , 608 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	dex_JLone = 20
	local new_lv = dex_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--ID7757	����� ��� 2 ���������(���)
function ItemUse_2gen_spr( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	gen2 = {}
	gen2[1] = 231
	gen2[2] = 232
	gen2[3] = 233
	gen2[4] = 234
	gen2[5] = 235
	gen2[6] = 236
	gen2[7] = 237
	gen2[8] = 681
	local i = math.random(1,8)
	
	local r1,r2 = MakeItem ( role , gen2[i]  , 1 , 4 )
	GiveItem ( role , 0 , 608 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	sta_JLone = 20
	local new_lv = sta_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--ID7418	������ �� 20 ���������
function ItemUse_CZHeq( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
 	local Money_add = 20000000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have>=999900000 then
		SystemNotice (role, "� ��� ������� ����� ������. ���������� ������������ �������")
		UseItemFailed ( role )
		return
	end
	AddMoney ( role , 0 , Money_add )
end 

--ID7751	������ ���������� ����� ������ 1
function ItemUse_HappyBook1 ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	if charLv > 89 then
		SystemNotice( role , "��� ������� ������� �������, ����� ������������ ���� ������� " )
		UseItemFailed ( role )
		return
	end
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3331  +  Exp_star + 10
	local dif_exp_thalf_b = (DEXP[charLv+1] - DEXP[charLv])*0.2  +  Exp_star + 10
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ���� " )
		UseItemFailed ( role )
		return
	elseif charLv>=1 and charLv<=25 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_five )
	elseif charLv>=26 and charLv<=55 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_three )
	elseif charLv>=56 and charLv<=84 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=85 and charLv<=89 and charLv~=79 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_half )
	elseif charLv==79 and dif_exp_thalf_b<=0 then 
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b>0 then 
			dif_exp_thalf = dif_exp_thalf_b*0.02 + DEXP[charLv+1]
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	end
end

--7752	������ ���������� ����� ������ 2
function ItemUse_HappyBook2 ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	if charLv > 99 then
		SystemNotice( role , "��� ������� ������� �������, ����� ������������ ���� ������� " )
		UseItemFailed ( role )
		return
	end
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3331  +  Exp_star + 10
	local dif_exp_thalf_b = (DEXP[charLv+1] - DEXP[charLv])*0.2  +  Exp_star + 10
	Cha_Boat = GetCtrlBoat ( role )

	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ���� " )
		UseItemFailed ( role )
		return
	elseif charLv < 90 then
		SystemNotice(role, "��� ������� ������� ��� ")
		UseItemFailed ( role )
		return
	elseif charLv <= 99 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	end
end

--������ �������� ID 6256
function ItemUse_SZYINGYONG ( role , Item )

	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 12 then
		SystemNotice( role , "������������ ������� ����� ������ �������" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6173 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6174 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6175 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6176 , 1 , 4)
		return
	end
end

--������ ����� ID 6257
function ItemUse_SZRONGYU ( role , Item )

	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 9 then
		SystemNotice( role , "������������ ������� ����� ������ �������" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6177 , 1 , 4)
		return
	elseif i<=50 then
		GiveItem ( role , 0 , 6178 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6179 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6180 , 1 , 4)
		return
	end
end

--������ ������ ID 6258
function ItemUse_SZXISHENG ( role , Item )

	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 8 then
		SystemNotice( role , "������������ ������� ����� ������ ��������" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6181 , 1 , 4)
		return
	elseif i<=50 then
		GiveItem ( role , 0 , 6182 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6183 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6184 , 1 , 4)
		return
	end
end

--������ ���������� ID 6259
function ItemUse_SZGONGZHENG ( role , Item )

	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 16 then
		SystemNotice( role , "������������ ������� ����� ������ ���������� �����" )
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6185 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6186 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6187 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6188 , 1 , 4)
		return
	end
end

--������ ���������� ID 6260
function ItemUse_SZLIANMING ( role , Item )

	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 13 then
		SystemNotice( role , "������������ ������� ����� ������ ������������" )
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6189 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6190 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6191 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6192 , 1 , 4)
		return
	end
end

--������ ����������� ID 6261
function ItemUse_SZJINGSHENG ( role , Item )

	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 14 then
		SystemNotice( role , "������������ ������� ����� ������ ��������" )
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6193 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6194 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6195 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6196 , 1 , 4)
		return
	end
end

function Chest_azik(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local c = math.random ( 1 , 5 )
		if c <= 1  then
			GiveItem ( role , 0 , 5845 , 1 , 4 )
			return
		elseif c <= 2 then
			GiveItem ( role , 0 , 5846 , 1 , 4 )
			return
		elseif c <= 3 then
			GiveItem ( role , 0 , 5847 , 1 , 4 )
			return
		elseif c <= 4 then
			GiveItem ( role , 0 , 5848 , 1 , 4 )
			return
		else
			GiveItem ( role , 0 , 5849 , 1 , 4 )
			return
		end
end

--5708	������ �������
function Chest_BD(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local c = math.random ( 1 , 4 )
		if c == 1  then
			GiveItem ( role , 0 , 864 , 1 , 4 )
			return
		elseif c == 2 then
			GiveItem ( role , 0 , 865 , 1 , 4 )
			return
		elseif c == 3 then
			GiveItem ( role , 0 , 866 , 1 , 4 )
			return
		else
			GiveItem ( role , 0 , 7710 , 1 , 4 )
			return
		end
end

--	8146	������� ���������� +3
function Chest_Surprise_3(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local rand = math.random ( 1 , 100 )
		if rand >= 1 and rand <= 6 then
			local a = math.random ( 1 , 5 )
			if a == 1  then
				GiveItem ( role , 0 , 6818 , 1 , 4 )
			elseif a == 2 then
				GiveItem ( role , 0 , 6821 , 1 , 4 )
			elseif a == 3 then
				GiveItem ( role , 0 , 6824 , 1 , 4 )
			elseif a == 4 then
				GiveItem ( role , 0 , 6827 , 1 , 4 )
			else
				GiveItem ( role , 0 , 6830 , 1 , 4 )
			end
		elseif rand >= 7 and rand <= 9 then
			local a = math.random ( 1 , 5 )
			if a == 1  then
				ItemGem_2 ( role , 6818 )
			elseif a == 2 then
				ItemGem_2 ( role , 6821 )
			elseif a == 3 then
				ItemGem_2 ( role , 6824 )
			elseif a == 4 then
				ItemGem_2 ( role , 6827 )
			else
				ItemGem_2 ( role , 6830 )
			end
		elseif rand >= 9 and rand <= 10 then
			local a = math.random ( 1 , 5 )
			local ChaName = GetChaDefaultName ( role )
			if a == 1  then
				ItemGem_3 ( role , 6818 )
				Notice('����������� ������ <<'..ChaName..'>>, �� ��������� ������� ���������� +3 � ��������: ��������� �������� ����� 3 ������!')
			elseif a == 2 then
				ItemGem_3 ( role , 6821 )
				Notice('����������� ������ <<'..ChaName..'>>, �� ��������� ������� ���������� +3 � ��������: ��������� �������� ����� 3 ������!')
			elseif a == 3 then
				ItemGem_3 ( role , 6824 )
				Notice('����������� ������ <<'..ChaName..'>>, �� ��������� ������� ���������� +3 � ��������: ��������� �������� ������� 3 ������!')
			elseif a == 4 then
				ItemGem_3 ( role , 6827 )
				Notice('����������� ������ <<'..ChaName..'>>, �� ��������� ������� ���������� +3 � ��������: ��������� �������� ������ 3 ������!')
			else
				ItemGem_3 ( role , 6830 )
				Notice('����������� ������ <<'..ChaName..'>>, �� ��������� ������� ���������� +3 � ��������: ��������� �������� ���� 3 ������!')
			end
		else
			GiveItem ( role , 0 , 3821 , 75 , 4 )
		end
end

--	8149	������� ���������� +4
function Chest_Surprise_4(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local rand = math.random ( 1 , 100 )
		if rand >= 1 and rand <= 6  then
			local a = math.random ( 1 , 5 )
			if a == 1  then
				GiveItem ( role , 0 , 6819 , 1 , 4 )
			elseif a == 2 then
				GiveItem ( role , 0 , 6822 , 1 , 4 )
			elseif a == 3 then
				GiveItem ( role , 0 , 6825 , 1 , 4 )
			elseif a == 4 then
				GiveItem ( role , 0 , 6828 , 1 , 4 )
			else
				GiveItem ( role , 0 , 6831 , 1 , 4 )
			end
		elseif rand >= 7 and rand <= 9 then
			local a = math.random ( 1 , 5 )
			if a == 1  then
				ItemGem_2 ( role , 6819 )
			elseif a == 2 then
				ItemGem_2 ( role , 6822 )
			elseif a == 3 then
				ItemGem_2 ( role , 6825 )
			elseif a == 4 then
				ItemGem_2 ( role , 6828 )
			else
				ItemGem_2 ( role , 6831 )
			end
		elseif rand >= 9 and rand <= 10 then
			local ChaName = GetChaDefaultName ( role )
			local a = math.random ( 1 , 5 )
			if a == 1  then
				ItemGem_3 ( role , 6819 )
				Notice('����������� ������ <<'..ChaName..'>>, �� ��������� ������� ���������� +4 � ��������: ������������ �������� ����� 3 ������!')
			elseif a == 2 then
				ItemGem_3 ( role , 6822 )
				Notice('����������� ������ <<'..ChaName..'>>, �� ��������� ������� ���������� +4 � ��������: ������������ �������� ����� 3 ������!')
			elseif a == 3 then
				ItemGem_3 ( role , 6825 )
				Notice('����������� ������ <<'..ChaName..'>>, �� ��������� ������� ���������� +4 � ��������: ������������ �������� ������� 3 ������!')
			elseif a == 4 then
				ItemGem_3 ( role , 6828 )
				Notice('����������� ������ <<'..ChaName..'>>, �� ��������� ������� ���������� +4 � ��������: ������������ �������� ������ 3 ������!')
			else
				ItemGem_3 ( role , 6831 )
				Notice('����������� ������ <<'..ChaName..'>>, �� ��������� ������� ���������� +4 � ��������: ������������ �������� ���� 3 ������!')
			end
		else
			GiveItem ( role , 0 , 3820 , 75 , 4 )
		end
end

function Chest_gemi_3(role, Item)--���� +3 ������
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local c = math.random ( 1 , 5 )
		if c == 1  then
			GiveItem ( role , 0 , 6818 , 1 , 4 )--��������� �������� �����
		elseif c == 2 then
			GiveItem ( role , 0 , 6821 , 1 , 4 )--��������� �������� �����
		elseif c == 3 then
			GiveItem ( role , 0 , 6824 , 1 , 4 )--��������� �������� �������
		elseif c == 4 then
			GiveItem ( role , 0 , 6827 , 1 , 4 )--��������� �������� ������
		else
			GiveItem ( role , 0 , 6830 , 1 , 4 )--��������� �������� ����
		end
end

function Chest_gemi_4(role, Item)--���� +4 ������
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local c = math.random ( 1 , 5 )
		if c == 1  then
			GiveItem ( role , 0 , 6819 , 1 , 4 )--������������ �������� �����
			return
		elseif c == 2 then
			GiveItem ( role , 0 , 6822 , 1 , 4 )--������������ �������� �����
			return
		elseif c == 3 then
			GiveItem ( role , 0 , 6825 , 1 , 4 )--������������ �������� �������
			return
		elseif c == 4 then
			GiveItem ( role , 0 , 6828 , 1 , 4 )--������������ �������� ������
			return
		else
			GiveItem ( role , 0 , 6831 , 1 , 4 )--������������ �������� ����
			return
		end
end

function Chest_gemi_5(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local c = math.random ( 1 , 5 )
		if c == 1  then
			GiveItem ( role , 0 , 0860 , 1 , 4 )
			return
		elseif c == 2 then
			GiveItem ( role , 0 , 0861 , 1 , 4 )
			return
		elseif c == 3 then
			GiveItem ( role , 0 , 0862 , 1 , 4 )
			return
		elseif c == 4 then
			GiveItem ( role , 0 , 0863 , 1 , 4 )
			return
		else
			GiveItem ( role , 0 , 1012 , 1 , 4 )
			return
		end
end


function Chest_ansiki(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local job = GetChaAttr(role, ATTR_JOB)
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
		if job == 8  then -- ����
			GiveItem ( role , 0 , 0765 , 1 , 4 )
			GiveItem ( role , 0 , 0772 , 1 , 4 )
			GiveItem ( role , 0 , 0935 , 1 , 4 )
			GiveItem ( role , 0 , 0936 , 1 , 4 )
			return
		elseif job == 9 then -- ����
			GiveItem ( role , 0 , 0775 , 2 , 4 )
			GiveItem ( role , 0 , 0768 , 1 , 4 )
			GiveItem ( role , 0 , 0808 , 1 , 4 )
			GiveItem ( role , 0 , 0807 , 1 , 4 )
			return
		elseif job == 12 then -- ����
			GiveItem ( role , 0 , 0783 , 1 , 4 )
			GiveItem ( role , 0 , 0779 , 1 , 4 )
			GiveItem ( role , 0 , 0810 , 1 , 4 )
			GiveItem ( role , 0 , 0809 , 1 , 4 )
			return
		elseif job == 13 then -- ����
			GiveItem ( role , 0 , 0787 , 1 , 4 )
			GiveItem ( role , 0 , 0791 , 1 , 4 )
			GiveItem ( role , 0 , 0812 , 1 , 4 )
			GiveItem ( role , 0 , 0814 , 1 , 4 )
			return
		elseif job == 14 then -- ��
			GiveItem ( role , 0 , 0794 , 1 , 4 )
			GiveItem ( role , 0 , 0797 , 1 , 4 )
			GiveItem ( role , 0 , 0813 , 1 , 4 )
			GiveItem ( role , 0 , 0811 , 1 , 4 )
			return
		elseif job == 16 then -- ����
			GiveItem ( role , 0 , 0805 , 1 , 4 )
			GiveItem ( role , 0 , 0801 , 1 , 4 )
			GiveItem ( role , 0 , 0877 , 1 , 4 )
			GiveItem ( role , 0 , 0815 , 1 , 4 )
			return
		else
		SystemNotice( role , "�� ����� ���� ������������, �������� ������ ���������!" )
		UseItemFailed ( role )
			return
		end
end


--����������� �����
function ItemUse_CookBlurry ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 2302 then
		SystemNotice(role ,"����� ������������ ������ �� ������� ���������")
		UseItemFailed ( role )
		return
	end
	local ingr1 = GetItemAttr(Item_Traget, ITEMATTR_VAL_STR)
	local ingr2 = GetItemAttr(Item_Traget, ITEMATTR_VAL_CON)
	local ingr3 = GetItemAttr(Item_Traget, ITEMATTR_VAL_DEX)
	local item_polych = GetItemAttr(Item_Traget, ITEMATTR_VAL_AGI)
	local lvl_cook = GetItemAttr(Item_Traget, ITEMATTR_URE)
	local count_use = GetItemAttr(Item_Traget, ITEMATTR_VAL_STA)
	local mf_count = GetItemAttr(Item_Traget, ITEMATTR_MAXURE)
	local Num_paper = GetItemForgeParam ( Item_Traget , 1 )
	Num_paper = TansferNum ( Num_paper )
	local ingr1_count = GetNum_Part2 ( Num_paper )
	local ingr2_count = GetNum_Part4 ( Num_paper )
	local ingr3_count = GetNum_Part6 ( Num_paper )
	local skill_lv = GetSkillLv(role, 0339)
	if skill_lv < lvl_cook then
		SystemNotice(role ,"������� ������ ������ ���������, ���� ��� ������� �������!")
		UseItemFailed ( role )
		return
	end
	if count_use == 0 then
		SystemNotice(role ,"������������ ������ �� ��������, ��������� �������� �� ��� ������������� ���!")
		UseItemFailed ( role )
		return
	end
	local ret1 = proc_ingridient(role,ingr1,ingr1_count)
	local ret2 = proc_ingridient(role,ingr2,ingr2_count)
	local ret3 = proc_ingridient(role,ingr3,ingr3_count)
	local ret4 = proc_ingridient(role,0855,mf_count)
	if ret1 == 0 or ret2 == 0 or ret3 == 0 or ret4 == 0 then
		UseItemFailed ( role )
		return
	end
	local dell1 = dell_ingridient(role,ingr1,ingr1_count)
	local dell2 = dell_ingridient(role,ingr2,ingr2_count)
	local dell3 = dell_ingridient(role,ingr3,ingr3_count)
	local dell4 = dell_ingridient(role,0855,mf_count)
	if dell1 == 0 or dell2 == 0 or dell3 == 0 or dell4 == 0 then
		UseItemFailed ( role )
		return
	end
	local rand = math.random(1,3)
	local item_polych_count = 0
	if skill_lv == 1 then
		item_polych_count = 1
	elseif skill_lv == 2 then
		item_polych_count = 2
	elseif skill_lv == 3 or skill_lv == 4 then
		if rand == 1 then
			item_polych_count = 3
		elseif rand == 2 then
			item_polych_count = 3
		elseif rand == 3 then
			item_polych_count = 4
		end
	elseif skill_lv == 5 or skill_lv == 6 then
		if rand == 1 then
			item_polych_count = 4
		elseif rand == 2 then
			item_polych_count = 4
		elseif rand == 3 then
			item_polych_count = 5
		end
	elseif skill_lv == 7 then
		if rand == 1 then
			item_polych_count = 5
		elseif rand == 2 then
			item_polych_count = 5
		elseif rand == 3 then
			item_polych_count = 5
		end
	end
	local new_count_use = count_use - 1
	SetItemAttr(Item_Traget, ITEMATTR_VAL_STA, new_count_use)
	GiveItem ( role, 0 , item_polych , item_polych_count , 4 )
	GiveItem ( role, 0 , 1067 , 1 , 4 )
end


function Chest_bski(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local job = GetChaAttr(role, ATTR_JOB)
	local typeSH = math.random ( 1 , 100 )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
		if job == 8  then -- ����
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 2532 , 1 , 4 )
			else
				GiveItem ( role , 0 , 2531 , 1 , 4 )
			return
			end
		elseif job == 9 then -- ����
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 2535 , 1 , 4 )
			else
				GiveItem ( role , 0 , 2534 , 1 , 4 )
			return
			end
		elseif job == 12 then -- ����
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 2538 , 1 , 4 )
			else
				GiveItem ( role , 0 , 2537 , 1 , 4 )
			return
			end
		elseif job == 13 then -- ����
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 2544 , 1 , 4 )
			else
				GiveItem ( role , 0 , 2543 , 1 , 4 )
			return
			end
		elseif job == 14 then -- ��
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 2547 , 1 , 4 )
			else
				GiveItem ( role , 0 , 2546 , 1 , 4 )
			return
			end
		elseif job == 16 then -- ����
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 2541 , 1 , 4 )
			else
				GiveItem ( role , 0 , 2540 , 1 , 4 )
			return
			end
		else
		SystemNotice( role , "�� ����� ���� ������������, �������� ������ ���������!" )
		UseItemFailed ( role )
			return
		end
end

function Chest_ansi65(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local job = GetChaAttr(role, ATTR_JOB)
	local typeSH = math.random ( 1 , 100 )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
		if job == 8  then -- ����
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 766 , 1 , 4 )
			else
				GiveItem ( role , 0 , 773 , 1 , 4 )
			return
			end
		elseif job == 9 then -- ����
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 769 , 1 , 4 )
			else
				GiveItem ( role , 0 , 776 , 1 , 4 )
			return
			end
		elseif job == 12 then -- ����
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 780 , 1 , 4 )
			else
				GiveItem ( role , 0 , 784 , 1 , 4 )
			return
			end
		elseif job == 13 then -- ����
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 792 , 1 , 4 )
			else
				GiveItem ( role , 0 , 788 , 1 , 4 )
			return
			end
		elseif job == 14 then -- ��
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 798 , 1 , 4 )
			else
				GiveItem ( role , 0 , 795 , 1 , 4 )
			return
			end
		elseif job == 16 then -- ����
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 806 , 1 , 4 )
			else
				GiveItem ( role , 0 , 802 , 1 , 4 )
			return
			end
		else
		SystemNotice( role , "�� ����� ���� ������������, �������� ������ ���������!" )
		UseItemFailed ( role )
			return
		end
end


--	2919	����� ������(�������)
function ItemUse_DathBagA(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"��� ���������� ����� 2 ��������� �����, ��� �� ������� ����� ������!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2846  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2846  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2920	����� ������(�������)
function ItemUse_DathBagB(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"��� ���������� ����� 2 ��������� �����, ��� �� ������� ����� ������!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2847  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2847  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2921	����� ������(�������)
function ItemUse_DathBagC(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"��� ���������� ����� 2 ��������� �����, ��� �� ������� ����� ������!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2848  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2848  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2922	����� ������(��������)
function ItemUse_DathBagD(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"��� ���������� ����� 2 ��������� �����, ��� �� ������� ����� ������!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2343  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2343  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2923	����� ������(������)
function ItemUse_DathBagE(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"��� ���������� ����� 2 ��������� �����, ��� �� ������� ����� ������!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2850  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2850  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2924	����� ������(������������)
function ItemUse_DathBagF(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"��� ���������� ����� 2 ��������� �����, ��� �� ������� ����� ������!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2851  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2851  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2925	����� ������(��������)
function ItemUse_DathBagG(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"��� ���������� ����� 2 ��������� �����, ��� �� ������� ����� ������!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2852  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2852  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2926	����� ������(���������� �����)
function ItemUse_DathBagH(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"��� ���������� ����� 2 ��������� �����, ��� �� ������� ����� ������!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2853  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2853  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	8202	������ ������ ������
function Chest_NewPlayer ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 6 then
		SystemNotice(role ,"��� ���������� ����� 5 ��������� �����, ��� �� ������� ������ ������ ������!")
		UseItemFailed ( role )
		return
	end
	local lv = GetChaAttr(role, ATTR_LV) 
	if lv <= 59 then
		SystemNotice ( role , "������ ������ ������ ����� ������� ������ ��������� 60 ������." )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job <= 7 then
		SystemNotice ( role , "������ ������ ������ ����� ������� ������ ���������� 2 ���������." )
		UseItemFailed ( role )
		return
	end
	--�������
	if job == 8 then
		GiveItem ( role , 0 , 0773  , 1 , 4 )
		GiveItem ( role , 0 , 2530  , 1 , 4 )
		GiveItem ( role , 0 , 2531  , 1 , 4 )
		GiveItem ( role , 0 , 2532  , 1 , 4 )
		GiveItem ( role , 0 , 8203  , 2 , 4 )
	--�������
	elseif job == 9 then
		GiveItem ( role , 0 , 0776  , 1 , 4 )
		GiveItem ( role , 0 , 0776  , 1 , 4 )
		GiveItem ( role , 0 , 2533  , 1 , 4 )
		GiveItem ( role , 0 , 2534  , 1 , 4 )
		GiveItem ( role , 0 , 2535  , 1 , 4 )
		GiveItem ( role , 0 , 8203  , 2 , 4 )
	--�������
	elseif job == 12 then
		GiveItem ( role , 0 , 0784  , 1 , 4 )
		GiveItem ( role , 0 , 2340  , 1 , 4 )
		GiveItem ( role , 0 , 2536  , 1 , 4 )
		GiveItem ( role , 0 , 2537  , 1 , 4 )
		GiveItem ( role , 0 , 2538  , 1 , 4 )
		GiveItem ( role , 0 , 8203  , 2 , 4 )
	--������������
	elseif job == 13 then
		GiveItem ( role , 0 , 0788  , 1 , 4 )
		GiveItem ( role , 0 , 2542  , 1 , 4 )
		GiveItem ( role , 0 , 2543  , 1 , 4 )
		GiveItem ( role , 0 , 2544  , 1 , 4 )
		GiveItem ( role , 0 , 2548  , 1 , 4 )
		GiveItem ( role , 0 , 8203  , 2 , 4 )
	--��������
	elseif job == 14 then
		GiveItem ( role , 0 , 0795  , 1 , 4 )
		GiveItem ( role , 0 , 2545  , 1 , 4 )
		GiveItem ( role , 0 , 2546  , 1 , 4 )
		GiveItem ( role , 0 , 2547  , 1 , 4 )
		GiveItem ( role , 0 , 2548  , 1 , 4 )
		GiveItem ( role , 0 , 8203  , 2 , 4 )
	--���������� �����
	elseif job == 16 then
		GiveItem ( role , 0 , 0802  , 1 , 4 )
		GiveItem ( role , 0 , 2539  , 1 , 4 )
		GiveItem ( role , 0 , 2540  , 1 , 4 )
		GiveItem ( role , 0 , 2541  , 1 , 4 )
		GiveItem ( role , 0 , 2548  , 1 , 4 )
		GiveItem ( role , 0 , 8203  , 2 , 4 )
	end
end

--	8204	���������� ������� I
function Chest_newbie1 ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 6 then
		SystemNotice(role ,"��� ���������� ����� 5 ��������� �����, ��� �� ������� ���������� ������� I!")
		UseItemFailed ( role )
		return
	end
	local lv = GetChaAttr(role, ATTR_LV) 
	if lv <= 39 then
		SystemNotice ( role , "���������� ������� I ����� ������� ������ ��������� 40 ������." )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job <= 7 then
		SystemNotice ( role , "���������� ������� I ����� ������� ������ ���������� 2 ���������." )
		UseItemFailed ( role )
		return
	end
	--�������
	if job == 8 then
		GiveItem ( role , 0 , 3802  , 1 , 4 )
		GiveItem ( role , 0 , 1932  , 1 , 4 )
		GiveItem ( role , 0 , 1506  , 1 , 4 )
		GiveItem ( role , 0 , 1509  , 1 , 4 )
	--�������
	elseif job == 9 then
		GiveItem ( role , 0 , 1929  , 1 , 4 )
		GiveItem ( role , 0 , 1936  , 1 , 4 )
		GiveItem ( role , 0 , 1940  , 1 , 4 )
		GiveItem ( role , 0 , 3799  , 2 , 4 )
	--�������
	elseif job == 12 then
		GiveItem ( role , 0 , 1944  , 1 , 4 )
		GiveItem ( role , 0 , 1948  , 1 , 4 )
		GiveItem ( role , 0 , 1952  , 1 , 4 )
		GiveItem ( role , 0 , 3806  , 1 , 4 )
	--������������
	elseif job == 13 then
		GiveItem ( role , 0 , 1959  , 1 , 4 )
		GiveItem ( role , 0 , 1966  , 1 , 4 )
		GiveItem ( role , 0 , 1973  , 1 , 4 )
		GiveItem ( role , 0 , 3813  , 1 , 4 )
	--��������
	elseif job == 14 then
		GiveItem ( role , 0 , 3810  , 1 , 4 )
		GiveItem ( role , 0 , 1956  , 1 , 4 )
		GiveItem ( role , 0 , 1963  , 1 , 4 )
		GiveItem ( role , 0 , 1970  , 1 , 4 )
	--���������� �����
	elseif job == 16 then
		GiveItem ( role , 0 , 1977  , 1 , 4 )
		GiveItem ( role , 0 , 1981  , 1 , 4 )
		GiveItem ( role , 0 , 1985  , 1 , 4 )
		GiveItem ( role , 0 , 3817  , 1 , 4 )
	end
end

--	8205	���������� ������� II
function Chest_newbie2 ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 6 then
		SystemNotice(role ,"��� ���������� ����� 5 ��������� �����, ��� �� ������� ���������� ������� II!")
		UseItemFailed ( role )
		return
	end
	local lv = GetChaAttr(role, ATTR_LV) 
	if lv <= 49 then
		SystemNotice ( role , "���������� ������� II ����� ������� ������ ��������� 50 ������." )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job <= 7 then
		SystemNotice ( role , "���������� ������� II ����� ������� ������ ���������� 2 ���������." )
		UseItemFailed ( role )
		return
	end
	--�������
	if job == 8 then
		GiveItem ( role , 0 , 3803  , 1 , 4 )
		GiveItem ( role , 0 , 1933  , 1 , 4 )
		GiveItem ( role , 0 , 1507  , 1 , 4 )
		GiveItem ( role , 0 , 1510  , 1 , 4 )
	--�������
	elseif job == 9 then
		GiveItem ( role , 0 , 1930  , 1 , 4 )
		GiveItem ( role , 0 , 1937  , 1 , 4 )
		GiveItem ( role , 0 , 1941  , 1 , 4 )
		GiveItem ( role , 0 , 3800  , 2 , 4 )
	--�������
	elseif job == 12 then
		GiveItem ( role , 0 , 1945  , 1 , 4 )
		GiveItem ( role , 0 , 1949  , 1 , 4 )
		GiveItem ( role , 0 , 1953  , 1 , 4 )
		GiveItem ( role , 0 , 3807  , 1 , 4 )
	--������������
	elseif job == 13 then
		GiveItem ( role , 0 , 1960  , 1 , 4 )
		GiveItem ( role , 0 , 1967  , 1 , 4 )
		GiveItem ( role , 0 , 1974  , 1 , 4 )
		GiveItem ( role , 0 , 3814  , 1 , 4 )
	--��������
	elseif job == 14 then
		GiveItem ( role , 0 , 3811  , 1 , 4 )
		GiveItem ( role , 0 , 1957  , 1 , 4 )
		GiveItem ( role , 0 , 1964  , 1 , 4 )
		GiveItem ( role , 0 , 1971  , 1 , 4 )
	--���������� �����
	elseif job == 16 then
		GiveItem ( role , 0 , 1978  , 1 , 4 )
		GiveItem ( role , 0 , 1982  , 1 , 4 )
		GiveItem ( role , 0 , 1986  , 1 , 4 )
		GiveItem ( role , 0 , 3818  , 1 , 4 )
	end
end

--	8206	���������� ������� III
function Chest_newbie3 ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "���������� ������������ � ����" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 6 then
		SystemNotice(role ,"��� ���������� ����� 5 ��������� �����, ��� �� ������� ���������� ������� III!")
		UseItemFailed ( role )
		return
	end
	local lv = GetChaAttr(role, ATTR_LV) 
	if lv <= 59 then
		SystemNotice ( role , "���������� ������� III ����� ������� ������ ��������� 60 ������." )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job <= 7 then
		SystemNotice ( role , "���������� ������� III ����� ������� ������ ���������� 2 ���������." )
		UseItemFailed ( role )
		return
	end
	--�������
	if job == 8 then
		GiveItem ( role , 0 , 3804  , 1 , 4 )
		GiveItem ( role , 0 , 1934  , 1 , 4 )
		GiveItem ( role , 0 , 1508  , 1 , 4 )
		GiveItem ( role , 0 , 1511  , 1 , 4 )
	--�������
	elseif job == 9 then
		GiveItem ( role , 0 , 1931  , 1 , 4 )
		GiveItem ( role , 0 , 1938  , 1 , 4 )
		GiveItem ( role , 0 , 1942  , 1 , 4 )
		GiveItem ( role , 0 , 3801  , 2 , 4 )
	--�������
	elseif job == 12 then
		GiveItem ( role , 0 , 1946  , 1 , 4 )
		GiveItem ( role , 0 , 1950  , 1 , 4 )
		GiveItem ( role , 0 , 1954  , 1 , 4 )
		GiveItem ( role , 0 , 3808  , 1 , 4 )
	--������������
	elseif job == 13 then
		GiveItem ( role , 0 , 1961  , 1 , 4 )
		GiveItem ( role , 0 , 1968  , 1 , 4 )
		GiveItem ( role , 0 , 1975  , 1 , 4 )
		GiveItem ( role , 0 , 3815  , 1 , 4 )
	--��������
	elseif job == 14 then
		GiveItem ( role , 0 , 3812  , 1 , 4 )
		GiveItem ( role , 0 , 1958  , 1 , 4 )
		GiveItem ( role , 0 , 1965  , 1 , 4 )
		GiveItem ( role , 0 , 1972  , 1 , 4 )
	--���������� �����
	elseif job == 16 then
		GiveItem ( role , 0 , 1979  , 1 , 4 )
		GiveItem ( role , 0 , 1983  , 1 , 4 )
		GiveItem ( role , 0 , 1988  , 1 , 4 )
		GiveItem ( role , 0 , 3819  , 1 , 4 )
	end
end

--	8208	����� ������(����)
function ItemUse_angel_str( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0129  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	str_JLone = 40
	local new_lv = str_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8209	����� ������(������.)
function ItemUse_angel_con( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0129  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	con_JLone = 40
	local new_lv = con_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8210	����� ������(����.)
function ItemUse_angel_agi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0129  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	agi_JLone = 45
	local new_lv = agi_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8211	����� ������(����.)
function ItemUse_angel_acc( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0129  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	dex_JLone = 40
	local new_lv = dex_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8212	����� ������(���)
function ItemUse_angel_spr( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0129  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	sta_JLone = 40
	local new_lv = sta_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end


--	8213	����� �������(����)
function ItemUse_apalon_str( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0130  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	str_JLone = 45
	local new_lv = str_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8214	����� �������(������.)
function ItemUse_apalon_con( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0130  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	con_JLone = 45
	local new_lv = con_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8215	����� �������(����.)
function ItemUse_apalon_agi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0130  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	agi_JLone = 45
	local new_lv = agi_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8216	����� �������(����.)
function ItemUse_apalon_acc( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0130  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	dex_JLone = 45
	local new_lv = dex_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8217	����� �������(���)
function ItemUse_apalon_spr( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0130  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	sta_JLone = 45
	local new_lv = sta_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end



--	8218	����� �������(����)
function ItemUse_gefest_str( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0131  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	str_JLone = 45
	local new_lv = str_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8219	����� �������(������.)
function ItemUse_gefest_con( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0131  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	con_JLone = 45
	local new_lv = con_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8220	����� �������(����.)
function ItemUse_gefest_agi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0131  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	agi_JLone = 45
	local new_lv = agi_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8221	����� �������(����.)
function ItemUse_gefest_acc( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0131  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	dex_JLone = 45
	local new_lv = dex_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8222	����� �������(���)
function ItemUse_gefest_spr( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0131  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	sta_JLone = 45
	local new_lv = sta_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end



--	8223	����� ������(����)
function ItemUse_gestia_str( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0132  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	str_JLone = 45
	local new_lv = str_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8224	����� ������(������.)
function ItemUse_gestia_con( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0132  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	con_JLone = 45
	local new_lv = con_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8225	����� ������(����.)
function ItemUse_gestia_agi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0132  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	agi_JLone = 45
	local new_lv = agi_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8226	����� ������(����.)
function ItemUse_gestia_acc( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0132  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	dex_JLone = 45
	local new_lv = dex_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8227	����� ������(���)
function ItemUse_gestia_spr( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0132  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	sta_JLone = 45
	local new_lv = sta_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end



--	8228	����� �����(����)
function ItemUse_afina_str( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0133  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	str_JLone = 45
	local new_lv = str_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8229	����� �����(������.)
function ItemUse_afina_con( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0133  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	con_JLone = 45
	local new_lv = con_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8230	����� �����(����.)
function ItemUse_afina_agi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0133  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	agi_JLone = 45
	local new_lv = agi_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8231	����� �����(����.)
function ItemUse_afina_acc( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0133  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	dex_JLone = 45
	local new_lv = dex_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8232	����� �����(���)
function ItemUse_afina_spr( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"��������� 1 ��������� ���� � ����� ���������, ����� ������������ ��� ������������")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0133  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	sta_JLone = 45
	local new_lv = sta_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end


--	8233	�������� ����
function ItemUse_ambr_Strup( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv4( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ��������� ����!" ) 
					UseItemFailed ( role )
				else
					Lvup_Str ( role , Item_Num , Item_Traget )
				end
		end 
end

--	8234	�������� ��������
function ItemUse_ambr_Agiup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv4( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ��������� ��������!" ) 
					UseItemFailed ( role )
				else
					Lvup_Agi ( role , Item_Num , Item_Traget )
				end 
		end 
end

--	8235	�������� ��������
function ItemUse_ambr_Dexup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv4( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ��������� ��������!" ) 
					UseItemFailed ( role )
				else
					Lvup_Dex ( role , Item_Num , Item_Traget )
				end 
		end 
end

--	8236	�������� ������������
function ItemUse_ambr_Conup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv4( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ��������� ������������!" ) 
					UseItemFailed ( role )
				else
					Lvup_Con ( role , Item_Num , Item_Traget )
				end 
		end 
end

--	8237	�������� ����
function ItemUse_ambr_Staup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "���������� ������������ ����� �� � ����" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv4( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "������� ����� ��� �� �����. ���������� ��������� ��� ��������� ����!" ) 
					UseItemFailed ( role )
				else
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end
		end 
end

--	8239	����������� ��������
function Chest_gemi_kolco(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local rand = math.random ( 1 , 100 )
		if rand >= 1 and rand <= 15 then
			GiveItem ( role , 0 , 8245 , 1 , 4 )
			return
		elseif rand >= 16 and rand <= 43 then
			GiveItem ( role , 0 , 8246 , 1 , 4 )
			return
		elseif rand >= 44 and rand <= 59 then
			GiveItem ( role , 0 , 8247 , 1 , 4 )
			return
		elseif rand >= 60 and rand <= 74 then
			GiveItem ( role , 0 , 8248 , 1 , 4 )
			return
		elseif rand >= 75 and rand <= 100 then
			GiveItem ( role , 0 , 8249 , 1 , 4 )
			return
		end
end

--	8240	���������������� ��������
function Chest_gemi_bizhyt(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "�� ����� ���� ������������, ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local c = math.random ( 1 , 2 )
		if c == 1  then
			GiveItem ( role , 0 , 8243 , 1 , 4 )
			return
		elseif c == 2 then
			GiveItem ( role , 0 , 8244 , 1 , 4 )
			return
		end
end

--	1016	������� ������
function ItemUse_NSDXB ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������!")
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	--�������
	if job == 8 then
		GiveItem ( role , 0 , 2332 , 1 , 4 )
		GiveItem ( role , 0 , 2338 , 1 , 4 )
		GiveItem ( role , 0 , 2817 , 1 , 4 )
		GiveItem ( role , 0 , 2818 , 1 , 4 )
		GiveItem ( role , 0 , 2819 , 1 , 4 )
	--�������
	elseif job == 9 then
		GiveItem ( role , 0 , 2331 , 1 , 4 )
		GiveItem ( role , 0 , 2331 , 1 , 4 )
		GiveItem ( role , 0 , 2820 , 1 , 4 )
		GiveItem ( role , 0 , 2821 , 1 , 4 )
		GiveItem ( role , 0 , 2822 , 1 , 4 )
	--�������
	elseif job == 12 then
		GiveItem ( role , 0 , 2334 , 1 , 4 )
		GiveItem ( role , 0 , 2335 , 1 , 4 )
		GiveItem ( role , 0 , 2823 , 1 , 4 )
		GiveItem ( role , 0 , 2824 , 1 , 4 )
		GiveItem ( role , 0 , 2825 , 1 , 4 )
	--������������
	elseif job == 13 then
		GiveItem ( role , 0 , 2336 , 1 , 4 )
		GiveItem ( role , 0 , 2829 , 1 , 4 )
		GiveItem ( role , 0 , 2830 , 1 , 4 )
		GiveItem ( role , 0 , 2831 , 1 , 4 )
		GiveItem ( role , 0 , 5847 , 1 , 4 )
	--��������
	elseif job == 14 then
		GiveItem ( role , 0 , 2337 , 1 , 4 )
		GiveItem ( role , 0 , 2832 , 1 , 4 )
		GiveItem ( role , 0 , 2833 , 1 , 4 )
		GiveItem ( role , 0 , 2834 , 1 , 4 )
		GiveItem ( role , 0 , 5847 , 1 , 4 )
	--���������� �����
	elseif job == 16 then
		GiveItem ( role , 0 , 2333 , 1 , 4 )
		GiveItem ( role , 0 , 2826 , 1 , 4 )
		GiveItem ( role , 0 , 2827 , 1 , 4 )
		GiveItem ( role , 0 , 2828 , 1 , 4 )
		GiveItem ( role , 0 , 5847 , 1 , 4 )
	else
		SystemNotice(role ,"������ ������ �� ������ ���������� ����� ������� ���� ������!")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." ��������� ������� ������ � �������� ��� ������!"
	Notice ( message )
end

--	1019	������� ������� �������
function ItemUse_minibh( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"�� ������� ������� ������. ��������� ��� ���������!")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 864 , 2 , 4 )
	GiveItem ( role , 0 , 865 , 2 , 4 )
	GiveItem ( role , 0 , 866 , 2 , 4 )
	GiveItem ( role , 0 , 7710 , 2 , 4 )
end


-- ������� ������ � ���� ���������


------
-- ID8501	�������
------
function Sk_Script_SlNew( role , Item ) 
	local sk_add = SK_SL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID8502	����� �� �������
------
function Sk_Script_BkzjNew( role , Item )
	local sk_add = SK_BKZJ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID8503	������������ ����������
------
function Sk_Script_HzcrNew( role , Item )
	local sk_add = SK_HZCR     
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
------
-- ID8504	�������� �����
------
function Sk_Script_SfNew( role , Item ) 
	local sk_add = SK_SF       
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID8505	�����
------
function Sk_Script_XwNew( role , Item ) 
	local sk_add = SK_XW        
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID8506	�����
------
function Sk_Script_MwNew( role , Item ) 
	local sk_add = SK_MW
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
-- ID8507	�������� ������
------
function Sk_Script_LmNew( role , Item ) 
	local sk_add = SK_LM
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

------
--������� ��������� �������
---------
function ItemUse_raritybox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then

		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then

		UseItemFailed ( role )
		return
	end
	
	local job = GetChaAttr( role, ATTR_JOB) 
	local cha_type = GetChaTypeID ( role )
	local itemname = ""
	if cha_type ~= 2 and job==4 then
		GiveItem ( role , 0 , 2580 , 1 , 4 )
		itemname = "85 ������ "
	elseif cha_type ~= 2 and job==16 then
		GiveItem ( role , 0 , 2580 , 1 , 4 )
		itemname = "85 ������ "
	elseif cha_type == 2  and job~=0 then
		GiveItem ( role , 0 , 2577 , 1 , 4 )
		itemname = "85 ������ "
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==2 then
		GiveItem ( role , 0 , 2579  , 1 , 4 )
		itemname = "85 ������ "
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==12 then
		GiveItem ( role , 0 , 2579  , 1 , 4 )
		itemname = "85 ������ "
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==5 then
		local dina=math.random ( 1, 2 )
	if dina==1 then
		GiveItem ( role , 0 , 2582  , 1 , 4 )
		itemname = "85 ������ "
	else
		GiveItem ( role , 0 , 2581  , 1 , 4 )
		itemname = "85 ������"
	end
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==13 then
		GiveItem ( role , 0 , 2582  , 1 , 4 )
		itemname = "85 ������ "
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==14 then
		GiveItem ( role , 0 , 2581  , 1 , 4 )
		itemname = "85 ������ "
	elseif cha_type == 1 and  job==1 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )
		itemname = "85 ������ "
	elseif cha_type == 1 and  job==9 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )
		itemname = "85 ������ "
	elseif cha_type == 3 and  job==1 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )
		itemname = "85 ������ "
	elseif cha_type == 3 and  job==9 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )
		itemname = "85 ������ "
	else 

		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "" ..cha_name.." ��������� 85 ������������ ������ � �������� "..itemname )
end

----------------------------------��������� ������ --------------------------------------------------------------
function ItemUse_purplebox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then

		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then

		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5702 )                                                
	if i <=0 then

		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5702 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=60 then	
		GiveItem ( role , 0 , 5711 , 1 , 4 )                    ---------------������ ������� ������� 40%
		itemname = "������ ������� ������� "
	elseif sc <=80 then		
		GiveItem ( role , 0 , 3877 , 2 , 4 )                    ---------------�������� �� ��������� �������� 2 ��. 20%
		itemname = "�������� �� ��������� �������� 2 ��."
	elseif sc <=71 then
		GiveItem ( role , 0 ,3095 , 5 , 4 )                    ---------------����� ��������� ���������� 29%
		itemname = "����� ��������� ���������� "
	elseif sc <=90 then
		GiveItem ( role , 0 ,2898 , 1 , 4 )                    ---------------����������� ���� 10%
		itemname = "����������� ���� "
	elseif sc <=99 then
		GiveItem ( role , 0 ,5703 , 1 , 4 )                    ---------------���� ������� ������� 1%
		itemname = "���� ������� ������� "	
	else   
end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "" ..cha_name.." ��������� ��������� ������ � �������� "..itemname )
end

----------------------------------������ ������� ������� --------------------------------------------------------------
function ItemUse_greenbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then

		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then

		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5703 )                                                
	if i <=0 then

		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5703 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=70 then	
		GiveItem ( role , 0 , 5712 , 1 , 4 )   ------------------ ������ ׸����� �������                
		itemname = "������ ׸����� ������� "
	elseif sc <=50 then		
		GiveItem ( role , 0 , 5707 , 1 , 4 )                    
		itemname = "�������� ������ "
	elseif sc <=85 then
		GiveItem ( role , 0 ,7109 , 1 , 4 )                    
		itemname = "������� �������� ���� "
	elseif sc <=85 then
		GiveItem ( role , 0 ,7111 , 1 , 4 )                    
		itemname = "������� �������� ������� "
	elseif sc <=87 then
		GiveItem ( role , 0 ,7110 , 1 , 4 )                    
		itemname = "������� �������� ����� "
	elseif sc <=95 then
		GiveItem ( role , 0 ,2835 , 1 , 4 )                    
		itemname = "������ ��������� "
	elseif sc <=98 then
		GiveItem ( role , 0 ,5704 , 1 , 4 )                    
		itemname = "���� ������� ������� "
	else   
end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "" ..cha_name.." ��������� ������ ������� ������� � �������� "..itemname )
end

----------------------------------������ ������� ������� --------------------------------------------------------------
function ItemUse_turebox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then

		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then

		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5704 )                                                
	if i <=0 then

		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5704 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=70 then	
		GiveItem ( role , 0 , 7112 , 1 , 4 )                    
		itemname = "������� �������� ����� "
	elseif sc <=80 then		
		GiveItem ( role , 0 , 5713 , 1 , 4 )                 
		itemname = "����� ������� "
	elseif sc <=80 then
		GiveItem ( role , 0 ,2801 , 20 , 4 )                  
		itemname = "����� � ������ 5 ��. "
	elseif sc <=80 then
		GiveItem ( role , 0 ,7108, 1 , 4 )                   
		itemname = "������� �������� ������ "
	elseif sc <=96 then
		GiveItem ( role , 0 ,5708 , 1 , 4 )                  
		itemname = "������ ������� "
	elseif sc <=97 then
		GiveItem ( role , 0 ,7001 , 1 , 4 )                  
		itemname = "������ ������ "
	elseif sc <=97 then
		GiveItem ( role , 0 ,5705 , 1 , 4 )                  
		itemname = "������ ������ "
	else   
end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "" ..cha_name.." ������ ������ ������� ������� � ������� "..itemname )
end

----------------------------------������ ������� --------------------------------------------------------------
function ItemUse_respectbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then

		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then

		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5705 )                                                
	if i <=0 then

		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5705 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=70 then	
		GiveItem ( role , 0 , 271 , 10 , 4 )                    
		itemname = "���������� ����� 10 ��."
	elseif sc <=80 then		
		GiveItem ( role , 0 , 7002 , 1 , 20 )                    
		itemname = "������ ������ "
	elseif sc <=80 then
		GiveItem ( role , 0 ,266 , 1 , 20 )                    
		itemname = "������ ������� ������� "
	elseif sc <=85 then
		GiveItem ( role , 0 ,5714 , 1 , 4 )                    
		itemname = "������������ ������ "
	elseif sc <=90 then
		GiveItem ( role , 0 ,5990 , 1 , 20 )                    
		itemname = "��� ������ "
	elseif sc <=99 then
		GiveItem ( role , 0 ,5706 , 1 , 4 )                    
		itemname = "������������ ���� "
	else   
end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "" ..cha_name.." ��������� ������ ������� � �������� "..itemname )
end


----------------------------------������������ ������ --------------------------------------------------------------
function ItemUse_peerlessbox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then

		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then

		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5706 )                                                
	if i <=0 then

		UseItemFailed ( role )
		return LUA_FALSE
	end
	
	local s = DelBagItem ( role , 5706 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=90 then	
		GiveItem ( role , 0 , 272 , 1 , 4 )                    
		itemname = "����-��� "
	elseif sc <=90 then		
		GiveItem ( role , 0 , 2836 , 1 , 20 )                    
		itemname = "������ �������  "
	elseif sc <=90 then		
		GiveItem ( role , 0 , 2837 , 1 , 20 )                    
		itemname = "������ ���� "
	elseif sc <=90 then		
		GiveItem ( role , 0 , 2838 , 1 , 20 )                    
		itemname = "������ �������� "
	elseif sc <=90 then		
		GiveItem ( role , 0 , 2839 , 1 , 20 )                    
		itemname = "������ ����� "
	elseif sc <=90 then		
		GiveItem ( role , 0 , 2840 , 1 , 20 )                    
		itemname = "������ ������ "
	elseif sc <=90 then		
		GiveItem ( role , 0 , 2841 , 1 , 20 )                    
		itemname = "������ ������ "
	elseif sc <=70 then		
		GiveItem ( role , 0 , 2404 , 1 , 20 )                    
		itemname = "���� ������� ������� "
	else
end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "" ..cha_name.." ��������� ������������ ������ � �������� "..itemname )
end
