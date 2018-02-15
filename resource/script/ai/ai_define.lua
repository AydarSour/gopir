CHANGE_TARGET_RATIO = 50

-----AI 类型定义-------------------------------------------------------------------------

AI_NONE        =  0  --不移动
AI_N_ATK       =  1  --不攻击
AI_FLEE        =  2  --被攻击后反方向逃跑 
AI_MOVETOHOST  =  4  --跟随主人
AI_R_ATK       =  5  --被攻击后反击
AI_ATK         = 10  --主动攻击 
AI_ATK_FLEE    = 11  --主动攻击+敌人逼近后逃跑(只有远程攻击的怪物可以填成此类型)

MWHH = 21
MWYH = 22
MWXS = 23
MWBK = 24
MWFH = 25
MWJW = 26
MWLH = 27
MWHS = 28
MWHDS = 29
MHKL = 30


--AI_PET         = 15  --宠物AI

--AI的并行标记
--记录每个角色的AI标记开关
ai_flag_summon = {}    --是否会召唤
ai_flag_pick   = {}    --是否会捡道具
ai_flag_nohide = {}    --是否反隐身

--为所有可以召唤同伴的怪物设置标记
ai_flag_summon[101] = 1
ai_flag_summon[102] = 1
ai_flag_summon[136] = 1
ai_flag_summon[137] = 1
ai_flag_summon[45]  = 1
ai_flag_summon[93]  = 1
ai_flag_summon[131] = 1
ai_flag_summon[49]  = 1
ai_flag_summon[200] = 1

--为所有可以拾取道具的怪物设置标记
ai_flag_pick[82] = 1 
ai_flag_pick[32] = 1
ai_flag_pick[33] = 1
ai_flag_pick[34] = 1 

--能够反隐身的怪列表, 设置标记
ai_flag_nohide[74] = 1   --冰龙
ai_flag_nohide[350] = 1
ai_flag_nohide[727] = 1 
ai_flag_nohide[673] = 1 
ai_flag_nohide[675] = 1 
ai_flag_nohide[679] = 1 
ai_flag_nohide[678] = 1 
ai_flag_nohide[709] = 1 
ai_flag_nohide[710] = 1 
ai_flag_nohide[711] = 1 
ai_flag_nohide[712] = 1 
ai_flag_nohide[713] = 1 
ai_flag_nohide[714] = 1 
ai_flag_nohide[715] = 1 
ai_flag_nohide[716] = 1 
ai_flag_nohide[717] = 1 
ai_flag_nohide[718] = 1 
ai_flag_nohide[694] = 1 
ai_flag_nohide[728] = 1
ai_flag_nohide[729] = 1
ai_flag_nohide[730] = 1
ai_flag_nohide[731] = 1
ai_flag_nohide[739] = 1
ai_flag_nohide[740] = 1
ai_flag_nohide[741] = 1
ai_flag_nohide[742] = 1
ai_flag_nohide[743] = 1
ai_flag_nohide[744] = 1
ai_flag_nohide[745] = 1
ai_flag_nohide[747] = 1

ai_flag_nohide[764] = 1
ai_flag_nohide[765] = 1
ai_flag_nohide[766] = 1
ai_flag_nohide[776] = 1
ai_flag_nohide[786] = 1
ai_flag_nohide[788] = 1
ai_flag_nohide[789] = 1 --黑龙
ai_flag_nohide[796] = 1
ai_flag_nohide[805] = 1
ai_flag_nohide[807] = 1
ai_flag_nohide[815] = 1

ai_flag_nohide[859] = 1 --乱斗白银城
ai_flag_nohide[860] = 1
ai_flag_nohide[861] = 1
ai_flag_nohide[866] = 1
ai_flag_nohide[867] = 1
ai_flag_nohide[868] = 1
ai_flag_nohide[869] = 1
ai_flag_nohide[870] = 1
ai_flag_nohide[871] = 1
ai_flag_nohide[872] = 1
ai_flag_nohide[873] = 1
ai_flag_nohide[874] = 1
ai_flag_nohide[875] = 1
ai_flag_nohide[877] = 1
ai_flag_nohide[878] = 1
ai_flag_nohide[879] = 1
ai_flag_nohide[880] = 1
ai_flag_nohide[881] = 1
ai_flag_nohide[882] = 1
ai_flag_nohide[883] = 1
ai_flag_nohide[884] = 1
ai_flag_nohide[885] = 1
ai_flag_nohide[886] = 1
ai_flag_nohide[974] = 1
ai_flag_nohide[975] = 1
ai_flag_nohide[976] = 1
ai_flag_nohide[977] = 1
ai_flag_nohide[978] = 1
ai_flag_nohide[979] = 1
ai_flag_nohide[980] = 1
ai_flag_nohide[981] = 1
ai_flag_nohide[982] = 1
ai_flag_nohide[983] = 1
ai_flag_nohide[984] = 1
ai_flag_nohide[985] = 1
ai_flag_nohide[986] = 1
ai_flag_nohide[987] = 1
ai_flag_nohide[988] = 1
ai_flag_nohide[989] = 1
ai_flag_nohide[990] = 1
ai_flag_nohide[991] = 1
ai_flag_nohide[992] = 1


ai_flag_nohide[933] = 1----------圣战
ai_flag_nohide[936] = 1
ai_flag_nohide[953] = 1
ai_flag_nohide[954] = 1
ai_flag_nohide[955] = 1
ai_flag_nohide[993] = 1
ai_flag_nohide[994] = 1
ai_flag_nohide[995] = 1
ai_flag_nohide[996] = 1
ai_flag_nohide[997] = 1
ai_flag_nohide[998] = 1
ai_flag_nohide[1001] = 1
ai_flag_nohide[1003] = 1
ai_flag_nohide[1004] = 1
ai_flag_nohide[1005] = 1
ai_flag_nohide[1006] = 1
ai_flag_nohide[1007] = 1
ai_flag_nohide[1008] = 1
ai_flag_nohide[1010] = 1
ai_flag_nohide[1011] = 1
ai_flag_nohide[1012] = 1
ai_flag_nohide[1015] = 1
ai_flag_nohide[1016] = 1
ai_flag_nohide[1017] = 1
ai_flag_nohide[1018] = 1
ai_flag_nohide[1019] = 1
ai_flag_nohide[1020] = 1
ai_flag_nohide[1021] = 1
ai_flag_nohide[1022] = 1
ai_flag_nohide[1023] = 1
ai_flag_nohide[1024] = 1
ai_flag_nohide[1027] = 1
ai_flag_nohide[1028] = 1
ai_flag_nohide[1029] = 1
ai_flag_nohide[1030] = 1
ai_flag_nohide[1031] = 1
ai_flag_nohide[1032] = 1
ai_flag_nohide[1033] = 1
ai_flag_nohide[1034] = 1
ai_flag_nohide[1035] = 1


-- 淹牌屠� 挛赏�
ai_flag_nohide[1140] = 1
ai_flag_nohide[1141] = 1
ai_flag_nohide[1142] = 1
ai_flag_nohide[1143] = 1
ai_flag_nohide[1144] = 1
ai_flag_nohide[1145] = 1
ai_flag_nohide[1146] = 1
ai_flag_nohide[1147] = 1
ai_flag_nohide[1148] = 1
ai_flag_nohide[1149] = 1
ai_flag_nohide[1150] = 1
ai_flag_nohide[1151] = 1
ai_flag_nohide[1152] = 1
ai_flag_nohide[1153] = 1
ai_flag_nohide[1154] = 1
ai_flag_nohide[1155] = 1
ai_flag_nohide[1156] = 1
ai_flag_nohide[1157] = 1
ai_flag_nohide[1158] = 1

--洋礓箨� 淹�
ai_flag_nohide[1400] = 1
ai_flag_nohide[1401] = 1
ai_flag_nohide[1402] = 1
--淹�
ai_flag_nohide[1403] = 1
ai_flag_nohide[1404] = 1
ai_flag_nohide[1405] = 1
ai_flag_nohide[1406] = 1
ai_flag_nohide[1407] = 1
ai_flag_nohide[1408] = 1
ai_flag_nohide[1409] = 1
ai_flag_nohide[1410] = 1
ai_flag_nohide[1411] = 1
ai_flag_nohide[1412] = 1
ai_flag_nohide[1413] = 1
ai_flag_nohide[1414] = 1
ai_flag_nohide[1415] = 1
ai_flag_nohide[1416] = 1
ai_flag_nohide[1417] = 1
ai_flag_nohide[1418] = 1
ai_flag_nohide[1419] = 1
ai_flag_nohide[1420] = 1
--扈龛 淹�
ai_flag_nohide[1421] = 1
ai_flag_nohide[1422] = 1
ai_flag_nohide[1423] = 1
ai_flag_nohide[1424] = 1
ai_flag_nohide[1425] = 1
ai_flag_nohide[1426] = 1
ai_flag_nohide[1427] = 1
ai_flag_nohide[1428] = 1
ai_flag_nohide[1429] = 1
ai_flag_nohide[1430] = 1
ai_flag_nohide[1431] = 1
ai_flag_nohide[1432] = 1
ai_flag_nohide[1433] = 1
ai_flag_nohide[1434] = 1
ai_flag_nohide[1435] = 1
ai_flag_nohide[1436] = 1
ai_flag_nohide[1437] = 1
ai_flag_nohide[1438] = 1
--令耨� 淹�
ai_flag_nohide[1439] = 1
ai_flag_nohide[1440] = 1
ai_flag_nohide[1441] = 1
ai_flag_nohide[1442] = 1
ai_flag_nohide[1443] = 1
ai_flag_nohide[1444] = 1





















