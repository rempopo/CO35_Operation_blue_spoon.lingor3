// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

// friendly kits

#define us_h ["usm_helmet_pasgt_g_w","usm_helmet_pasgt_w"]

#define specus_h ["CUP_H_FR_BoonieWDL","usm_bdu_cap_wdl","usm_bdu_boonie_wdl","CUP_H_FR_Bandana_Headset","CUP_H_FR_BeanieGreen","CUP_H_FR_Headband_Headset"]

cargo_kit_us = [
    [["rhs_weap_m72a7",2]],
	[["30Rnd_556x45_Stanag_green",20],["SmokeShell",10],["rhs_200rnd_556x45_M_SAW",10],["HandGrenade",10],["1Rnd_HE_Grenade_shell",20]],
	[["ACE_fieldDressing",20],["ACE_packingBandage",20],["ACE_elasticBandage",20],["ACE_tourniquet",4],["ACE_morphine",5],["ACE_epinephrine",5],["ACE_quikclot",20]],
	[]
];

kit_us_pl = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbv_gr","usm_pack_st138_prc77","usm_bdu_cap_wdl",""],
	["<PRIMARY WEAPON >>  ","RH_M16A2","30Rnd_556x45_Stanag_green",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",8],UNIFORM_ITEMS_L]],
	["<BACKPACK ITEMS >> ",[["SmokeShellBlue",2],["SmokeShell",2]]]
];

kit_us_sl = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbv_gr","usm_pack_st138_prc77","usm_bdu_cap_wdl",""],
	["<PRIMARY WEAPON >>  ","RH_M16A2","30Rnd_556x45_Stanag_green",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",8],UNIFORM_ITEMS_L]],
	["<BACKPACK ITEMS >> ",[["SmokeShellBlue",2],["SmokeShell",2]]]
];

kit_us_ftl = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbv_gr","",us_h,""],
	["<PRIMARY WEAPON >>  ","RH_M16A2gl","30Rnd_556x45_Stanag_green",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["1Rnd_HE_Grenade_shell",8],["PRIMARY MAG",8],["30Rnd_556x45_Stanag",1],["SmokeShellGreen",2],UNIFORM_ITEMS_L]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_us_ar = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbv_mg_m","CUP_B_AlicePack_Khaki",us_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m249","rhs_200rnd_556x45_M_SAW",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",1],UNIFORM_ITEMS]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];

kit_us_gr = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbv_gr","",us_h,""],
	["<PRIMARY WEAPON >>  ","RH_M16A2gl","30Rnd_556x45_Stanag_green",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["1Rnd_HE_Grenade_shell",8],["PRIMARY MAG",8],["30Rnd_556x45_Stanag",1],UNIFORM_ITEMS]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_us_r = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbv_gr","CUP_B_AlicePack_Khaki",us_h,""],
	["<PRIMARY WEAPON >>  ","RH_M16A2","30Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","rhs_m72a7_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["30Rnd_556x45_Stanag_green",8],UNIFORM_ITEMS]],
	["<BACKPACK ITEMS >> ",[["rhs_200rnd_556x45_M_SAW",3]]]
];


kit_specus_sl = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbe_rm_m","usm_pack_st138_prc77",specus_h,""],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5SD6","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",6],UNIFORM_ITEMS_L]],
	["<BACKPACK ITEMS >> ",[["SmokeShellBlue",2],["SmokeShell",2]]]
];

kit_specus_ftl = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbe_rm_m","","CUP_H_FR_BoonieWDL",""],
	["<PRIMARY WEAPON >>  ","hlc_M4_Carbine_M203","30Rnd_556x45_Stanag_green",["hlc_muzzle_556NATO_KAC","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["1Rnd_HE_Grenade_shell",8],["PRIMARY MAG",7],["HandGrenade",2],UNIFORM_ITEMS_L]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_specus_ar = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbe_rm","CUP_B_AlicePack_Khaki",specus_h,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_M60E4","CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["HANDGUN MAG",1],UNIFORM_ITEMS]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",4]]]
];

kit_specus_gr = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbe_rm_m","CUP_B_AlicePack_Khaki",specus_h,""],
	["<PRIMARY WEAPON >>  ","hlc_M4_Carbine_M203","30Rnd_556x45_Stanag_green",["hlc_muzzle_556NATO_KAC","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["1Rnd_HE_Grenade_shell",7],["PRIMARY MAG",7],UNIFORM_ITEMS]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_specus_r = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_pasgt_lbe_rm","CUP_B_AlicePack_Khaki",specus_h,""],
	["<PRIMARY WEAPON >>  ","hlc_M4_Carbine","30Rnd_556x45_Stanag",["hlc_muzzle_556NATO_KAC","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["30Rnd_556x45_Stanag_green",8],["HandGrenade",2],UNIFORM_ITEMS]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",3]]]
];

kit_crewus_r = [
	["<EQUIPEMENT >>  ","usm_bdu_w","usm_vest_LBE_rmp","","usm_helmet_cvc",""],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5A5","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",3],["SmokeShellGreen",2],UNIFORM_ITEMS]],
	["<BACKPACK ITEMS >> ",[]]
];



//enemy kits

#define panama_v ["CUP_V_I_Carrier_Belt","CUP_V_RUS_Smersh_1","CUP_V_O_Ins_Carrier_Rig"]
#define panama_h ["H_Booniehat_khk","CUP_H_ChDKZ_Cap","usm_bdu_cap_odg"]
 
#define panama_w_r ["hlc_rifle_SLR","rhs_weap_akmn","rhs_weap_akms","rhs_weap_akm","RH_M16a1"]
#define panama_a_r ["hlc_10Rnd_762x51_B_fal","rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm","20Rnd_556x45_Stanag"]

kit_random_panama = [
    "kit_panama_r","kit_panama_r","kit_panama_r"
    ,"kit_panama_mg"
	,"kit_panama_gr"
	,"kit_panama_at"
];

kit_panama_at = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green",panama_v,"rhs_rpg_empty",panama_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["HandGrenade",2],["rhs_rpg7_OG7V_mag",2],["SECONDARY MAG",1]]]
];

kit_panama_mg = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_O_Ins_Carrier_Rig_MG","B_FieldPack_khk",panama_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",3],["HandGrenade",2]]]
];

kit_panama_gr = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green",panama_v,"B_FieldPack_khk",panama_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akms_gp25","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["rhs_VOG25",5]]]
];

kit_panama_r = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green",panama_v,"",panama_h,""],
	["<PRIMARY WEAPON >>  ",panama_w_r,panama_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",6],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[]]
]; 

kit_panama_mm = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_RUS_Smersh_1","","H_Booniehat_khk",""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_CZ550","CUP_5x_22_LR_17_HMR_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",6],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_panamaFO_r = [
	["<EQUIPEMENT >>  ","CUP_U_O_TK_Green","CUP_V_RUS_Smersh_1","tf_mr3000_rhs","H_Booniehat_khk",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",6],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
