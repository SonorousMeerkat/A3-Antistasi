//Alits Template Call
if (worldName == "Altis") exitWith {call compile preProcessFileLineNumbers "Templates\Vanilla_Reb_FIA_Altis.sqf"};
////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
nameTeamPlayer = if (worldName == "Tanoa") then {"SDK"} else {"FIA"};
SDKFlag = "Flag_Syndikat_F";
SDKFlagTexture = "\A3\Data_F_exp\Flags\Flag_Synd_CO.paa";
typePetros = "I_C_Soldier_Camo_F";

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//First Entry is Guerilla, Second Entry is Para/Military
staticCrewTeamPlayer = "I_G_Soldier_unarmed_F";
SDKUnarmed = "I_G_Survivor_F";
SDKSniper = ["I_C_Soldier_Bandit_5_F","I_C_Soldier_Para_7_F"];
SDKATman = ["I_C_Soldier_Bandit_2_F","I_C_Soldier_Para_5_F"];
SDKMedic = ["I_C_Soldier_Bandit_1_F","I_C_Soldier_Para_3_F"];
SDKMG = ["I_C_Soldier_Bandit_3_F","I_C_Soldier_Para_4_F"];
SDKExp = ["I_C_Soldier_Bandit_8_F","I_C_Soldier_Para_8_F"];
SDKGL = ["I_C_Soldier_Bandit_6_F","I_C_Soldier_Para_6_F"];
SDKMil = ["I_C_Soldier_Bandit_7_F","I_C_Soldier_Para_1_F"];
SDKSL = ["I_C_Soldier_Bandit_4_F","I_C_Soldier_Para_2_F"];
SDKEng = ["I_G_engineer_F","I_G_engineer_F"];

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
groupsSDKmid = [SDKSL,SDKGL,SDKMG,SDKMil];
groupsSDKAT = [SDKSL,SDKMG,SDKATman,SDKATman,SDKATman];
groupsSDKSquad = [SDKSL,SDKGL,SDKMil,SDKMG,SDKMil,SDKATman,SDKMil,SDKMedic];
groupsSDKSquadEng = [SDKSL,SDKGL,SDKMil,SDKMG,SDKExp,SDKATman,SDKEng,SDKMedic];
groupsSDKSquadSupp = [SDKSL,SDKGL,SDKMil,SDKMG,SDKATman,SDKMedic,[staticCrewTeamPlayer,staticCrewTeamPlayer],[staticCrewTeamPlayer,staticCrewTeamPlayer]];
groupsSDKSniper = [SDKSniper,SDKSniper];
groupsSDKSentry = [SDKGL,SDKMil];

//Rebel Unit Tiers (for costs)
sdkTier1 = SDKMil + [staticCrewTeamPlayer] + SDKMG + SDKGL + SDKATman;
sdkTier2 = SDKMedic + SDKExp + SDKEng;
sdkTier3 = SDKSL + SDKSniper;
soldiersSDK = sdkTier1 + sdkTier2 + sdkTier3;

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
vehSDKBike = "I_G_Quadbike_01_F";
vehSDKLightArmed = "I_G_Offroad_01_armed_F";
vehSDKAT = "I_G_Offroad_02_AT_F";
vehSDKLightUnarmed = "I_G_Offroad_01_F";
vehSDKTruck = "I_C_Van_01_Transport_F";
//vehSDKHeli = "I_C_Heli_Light_01_civil_F";
vehSDKPlane = "I_C_Plane_civil_01_F";
vehSDKBoat = "I_C_Boat_Transport_01_F";
vehSDKRepair = "B_G_Offroad_01_repair_F";

//Civilian Vehicles
civCar = "C_Offroad_01_F";
civTruck = "C_Van_01_transport_F";
civHeli = "C_Heli_Light_01_civil_F";
civBoat = "C_Boat_Transport_02_F";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Static Weapons
SDKMGStatic = "I_HMG_01_high_F";
staticATteamPlayer = "I_Static_AT_F";
staticAAteamPlayer = "I_Static_AA_F";
SDKMortar = "I_G_Mortar_01_F";
SDKMortarHEMag = "8Rnd_82mm_Mo_shells";
SDKMortarSmokeMag = "8Rnd_82mm_Mo_Smoke_white";

//Static Weapon Bags
MGStaticSDKB = "I_HMG_01_high_weapon_F";
ATStaticSDKB = "I_AT_01_weapon_F";
AAStaticSDKB = "I_AA_01_weapon_F";
MortStaticSDKB = "I_Mortar_01_weapon_F";
//Short Support
supportStaticSDKB = "I_HMG_01_support_F";
//Tall Support
supportStaticsSDKB2 = "I_HMG_01_support_high_F";
//Mortar Support
supportStaticsSDKB3 = "I_Mortar_01_support_F";

////////////////////////////////////
//             ITEMS             ///
////////////////////////////////////
//Player spawn loadout
teamPlayerDefaultLoadout = [[],[],[],["U_I_C_Soldier_Camo_F", []],[],[],"","",[],["ItemMap","","","","",""]];
//Mines
ATMineMag = "ATMine_Range_Mag";
APERSMineMag = "APERSMine_Range_Mag";
//Starting Unlocks
unlockedWeapons append ["hgun_Pistol_01_F","hgun_P07_khk_F","SMG_05_F","SMG_03_TR_black"];
unlockedRifles append ["SMG_05_F","SMG_03_TR_black"];
unlockedMagazines append ["10Rnd_9x21_Mag","16Rnd_9x21_Mag","30Rnd_9x21_Mag_SMG_02","50Rnd_570x28_SMG_03","MiniGrenade","IEDLandBig_Remote_Mag","IEDUrbanBig_Remote_Mag","IEDLandSmall_Remote_Mag","IEDUrbanSmall_Remote_Mag"];
initialRifles append ["SMG_05_F","SMG_03_TR_black"];
unlockedBackpacks append ["B_FieldPack_blk","B_FieldPack_oucamo","B_FieldPack_cbr","B_FieldPack_oli","B_FieldPack_ghex_F"];
civilianVest = ["V_Chestrig_blk","V_Chestrig_rgr","V_Chestrig_khk","V_Chestrig_oli","V_BandolierB_blk","V_BandolierB_ghex","V_BandolierB_rgr","V_BandolierB_oli","V_Rangemaster_belt","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_TacChestrig_grn_F"];
//TFAR unlocks
if (hasTFAR) then {unlockedItems append ["tf_microdagr","tf_anprc154"]};
if (startLR) then {unlockedBackpacks pushBack "tf_anprc155"};