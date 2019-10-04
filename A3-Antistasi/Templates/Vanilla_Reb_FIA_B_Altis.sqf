////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
nameTeamPlayer = "FIA";
SDKFlag = "Flag_FIA_F";
SDKFlagTexture = "\A3\Data_F\Flags\Flag_FIA_CO.paa";
typePetros = "B_G_officer_F";

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//First Entry is Guerilla, Second Entry is Para/Military
staticCrewTeamPlayer = "B_G_Soldier_unarmed_F";
SDKUnarmed = "B_G_Survivor_F";
SDKSniper = ["B_G_Soldier_M_F","B_G_Sharpshooter_F"];
SDKATman = ["B_G_Soldier_LAT2_F","B_G_Soldier_LAT_F"];
SDKMedic = ["B_G_medic_F","B_G_medic_F"];
SDKMG = ["B_G_Soldier_AR_F","B_G_Soldier_AR_F"];
SDKExp = ["B_G_Soldier_exp_F","B_G_Soldier_exp_F"];
SDKGL = ["B_G_Soldier_GL_F","B_G_Soldier_GL_F"];
SDKMil = ["B_G_Soldier_lite_F","B_G_Soldier_lite_F"];
SDKSL = ["B_G_Soldier_SL_F","B_G_Soldier_SL_F"];
SDKEng = ["B_G_engineer_F","B_G_engineer_F"];

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
vehSDKBike = "B_G_Quadbike_01_F";
vehSDKLightArmed = "B_G_Offroad_01_armed_F";
vehSDKAT = "B_G_Offroad_01_AT_F";
vehSDKLightUnarmed = "B_G_Offroad_01_F";
vehSDKTruck = "B_G_Van_01_transport_F";
//vehSDKHeli = "I_C_Heli_Light_01_civil_F";
vehSDKPlane = "C_Plane_Civil_01_F";
vehSDKBoat = "B_G_Boat_Transport_01_F";
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
SDKMGStatic = "B_HMG_01_high_F";
staticATteamPlayer = "B_Static_AT_F";
staticAAteamPlayer = "B_Static_AA_F";
SDKMortar = "B_G_Mortar_01_F";
SDKMortarHEMag = "8Rnd_82mm_Mo_shells";
SDKMortarSmokeMag = "8Rnd_82mm_Mo_Smoke_white";

//Static Weapon Bags
MGStaticSDKB = "B_HMG_01_high_weapon_F";
ATStaticSDKB = "B_AT_01_weapon_F";
AAStaticSDKB = "B_AA_01_weapon_F";
MortStaticSDKB = "B_Mortar_01_weapon_F";
//Short Support
supportStaticSDKB = "B_HMG_01_support_F";
//Tall Support
supportStaticsSDKB2 = "B_HMG_01_support_high_F";
//Mortar Support
supportStaticsSDKB3 = "B_Mortar_01_support_F";

////////////////////////////////////
//             ITEMS             ///
////////////////////////////////////
//Player spawn loadout
teamPlayerDefaultLoadout = [[],[],[],["U_BG_Guerilla2_1", []],[],[],"","",[],["ItemMap","","","","",""]];
//Mines
ATMineMag = "ATMine_Range_Mag";
APERSMineMag = "APERSMine_Range_Mag";
//Starting Unlocks
unlockedWeapons append ["hgun_Pistol_heavy_02_F","hgun_ACPC2_F","hgun_PDW2000_F","SMG_03_TR_black","Binocular"];
unlockedRifles append ["SMG_01_F","SMG_03_TR_black"];
unlockedMagazines append ["6Rnd_45ACP_Cylinder","9Rnd_45_Mag","30Rnd_9x21_Mag","50Rnd_570x28_SMG_03","MiniGrenade","IEDLandBig_Remote_Mag","IEDUrbanBig_Remote_Mag","IEDLandSmall_Remote_Mag","IEDUrbanSmall_Remote_Mag"];
initialRifles append ["SMG_01_F","SMG_03_TR_black"];
unlockedBackpacks append ["B_FieldPack_oli","B_FieldPack_blk","B_FieldPack_ocamo","B_FieldPack_oucamo","B_FieldPack_cbr","B_FieldPack_khk"];
civilianVest = ["V_Chestrig_blk","V_Chestrig_rgr","V_Chestrig_khk","V_Chestrig_oli","V_BandolierB_blk","V_BandolierB_cbr","V_BandolierB_rgr","V_BandolierB_khk","V_BandolierB_oli","V_Rangemaster_belt"];
//TFAR Unlocks
if (hasTFAR) then {unlockedItems append ["tf_microdagr","tf_rf7800str"]};
if (startLR) then {unlockedBackpacks pushBack "tf_rt1523g"};