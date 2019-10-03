////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameOccupants = "TKA";

//Police Faction
factionGEN = "BLU_GEN_F";
//SF Faction
factionMaleOccupants = "UK3CB_BAF_Faction_Army_Desert";
//Miltia Faction
if (gameMode != 4) then {factionFIA = "UK3CB_TKP_I"};

//Flag Images
NATOFlag = "Flag_TKA_O_Army";
NATOFlagTexture = "\UK3CB_Factions\addons\UK3CB_Factions_TKA\Flag\tka_o_army_co.paa";
flagNATOmrk = "UK3CB_MARKER_TKA_O_Army";
if (isServer) then {"NATO_carrier" setMarkerText "Takistani Carrier"};
	
//Loot Crate
NATOAmmobox = "B_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
NATOPlayerLoadouts = [
	//Team Leader
	"UK3CB_TKA_B_SF_SL",
	//Medic
	"UK3CB_TKA_B_SF_MD",
	//Autorifleman
	"UK3CB_TKA_B_SF_AR",
	//Marksman
	"UK3CB_TKA_B_SF_MK",
	//Anti-tank Scout
	"UK3CB_TKA_B_SF_LAT",
	//AT2
	"UK3CB_TKA_B_SF_LAT"
];

//PVP Player Vehicles
vehNATOPVP = ["UK3CB_BAF_MAN_HX60_Container_Servicing_Air_Green","UK3CB_BAF_LandRover_Hard_FFR_Green_B_Tropical","UK3CB_BAF_LandRover_Snatch_FFR_Green_A_Tropical","UK3CB_BAF_LandRover_Soft_FFR_Green_B_Tropical","UK3CB_BAF_LandRover_WMIK_HMG_FFR_Green_B_Tropical_RM"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
NATOGrunt = "UK3CB_TKA_I_RIF_1";
NATOOfficer = "UK3CB_TKA_I_OFF";
NATOOfficer2 = "UK3CB_TKA_I_CREW_COMM";
NATOBodyG = "UK3CB_BAF_Crewman_RTR_DDPM";
NATOCrew = "UK3CB_TKA_I_CREW";
NATOUnarmed = "B_G_Survivor_F";
NATOMarksman = "UK3CB_TKA_I_MK";
staticCrewOccupants = "UK3CB_TKA_I_NAVY_CREW";
NATOPilot = "UK3CB_TKA_I_JET_PILOT";

//Militia Units
if (gameMode != 4) then
	{
    	FIARifleman = "UK3CB_TKP_I_RIF_1";
    	FIAMarksman = "UK3CB_TKP_I_MK";
	};

//Police Units
policeOfficer = "UK3CB_TKP_I_TL";
policeGrunt = "UK3CB_TKP_I_RIF_2";

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsNATOSentry = ["UK3CB_TKA_I_GL",NATOGrunt];
groupsNATOSniper = ["UK3CB_TKA_I_SF_SNI","UK3CB_TKA_I_SF_SPOT"];
groupsNATOsmall = [groupsNATOSentry,groupsNATOSniper];
//Fireteams
groupsNATOAA = ["UK3CB_TKA_I_SL","UK3CB_TKA_I_AA","UK3CB_TKA_I_AA","UK3CB_TKA_I_AA_ASST"];
groupsNATOAT = ["UK3CB_TKA_I_SL","UK3CB_TKA_I_AT","UK3CB_TKA_I_AT","UK3CB_TKA_I_AT_ASST"];
groupsNATOmid = [["UK3CB_TKA_I_SL","UK3CB_TKA_I_MG","UK3CB_TKA_I_MG_ASST","UK3CB_TKA_I_RIF_2"],groupsNATOAA,groupsNATOAT];
//Squads
NATOSquad = ["UK3CB_TKA_I_SL",NATOGrunt,"UK3CB_TKA_I_DEM",NATOMarksman,"UK3CB_TKA_I_TL","UK3CB_TKA_I_AR","UK3CB_TKA_I_LAT","UK3CB_TKA_I_MD"];
NATOSpecOp = ["UK3CB_TKA_I_SF_SL","UK3CB_TKA_I_SF_RIF_1","UK3CB_TKA_I_SF_RIF_2","UK3CB_TKA_I_SF_LAT","UK3CB_TKA_I_SF_TL","UK3CB_TKA_I_SF_DEM","UK3CB_TKA_I_SF_AR","UK3CB_TKA_I_SF_MD"];
groupsNATOSquad =
	[
	NATOSquad,
	["UK3CB_TKA_I_SL","UK3CB_TKA_I_AR","UK3CB_TKA_I_GL",NATOMarksman,"UK3CB_TKA_I_AT","UK3CB_TKA_I_AT_ASST","UK3CB_TKA_I_DEM","UK3CB_TKA_I_MD"],
	["UK3CB_TKA_I_SL","UK3CB_TKA_I_ENG","UK3CB_TKA_I_TL","UK3CB_TKA_I_MG","UK3CB_TKA_I_MG_ASST","UK3CB_TKA_I_GL","UK3CB_TKA_I_RIF_2","UK3CB_TKA_I_MD"],
	["UK3CB_TKA_I_SL","UK3CB_TKA_I_AR","UK3CB_TKA_I_GL",NATOMarksman,"UK3CB_TKA_I_TL","UK3CB_TKA_I_AT","UK3CB_TKA_I_AT_ASST","UK3CB_TKA_I_MD"],
	["UK3CB_TKA_I_SL","UK3CB_TKA_I_AR","UK3CB_TKA_I_GL","UK3CB_TKA_I_MK","UK3CB_TKA_I_ENG","UK3CB_TKA_I_LAT","UK3CB_TKA_I_DEM","UK3CB_TKA_I_MD"]
	];

//Militia Groups
if (gameMode != 4) then
	{
	//Teams
	groupsFIASmall =
		[
		["UK3CB_TKP_I_STATIC_GUN_NSV","UK3CB_TKP_I_STATIC_TRI_NSV"],
		["UK3CB_TKP_I_AT","UK3CB_TKP_I_RIF_2"],
		["UK3CB_TKP_I_IFF","UK3CB_TKP_I_MK"]
		];
	//Fireteams
	groupsFIAMid =
		[
		["UK3CB_TKP_I_QRF_SL","UK3CB_TKP_I_QRF_MK","UK3CB_TKP_I_QRF_AR","UK3CB_TKP_I_QRF_ENG"],
		["UK3CB_TKP_I_QRF_TL","UK3CB_TKP_I_QRF_AR","UK3CB_TKP_I_QRF_RIF_1","UK3CB_TKP_I_QRF_AT"],
		["UK3CB_TKP_I_QRF_TL","UK3CB_TKP_I_QRF_ENG","UK3CB_TKP_I_QRF_AR","UK3CB_TKP_I_QRF_AT"]
		];
	//Squads
    	FIASquad = ["UK3CB_TKP_I_CIB_SL","UUK3CB_TKP_I_CIB_RIF_2","UK3CB_TKP_I_CIB_AT","UK3CB_TKP_I_CIB_TL","UK3CB_TKP_I_CIB_AR","UK3CB_TKP_I_CIB_RIF_1","UK3CB_TKP_I_CIB_ENG","UK3CB_TKP_I_CIB_MD"];
	groupsFIASquad = [FIASquad];
	};

//Police Groups
//Teams
groupsNATOGen = [policeOfficer,policeGrunt];

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehNATOBike = "B_T_Quadbike_01_F";
vehNATOLightArmed = ["UK3CB_TKA_I_LR_M2","UK3CB_TKA_I_LR_AGS30","UK3CB_TKA_I_LR_SPG9","UK3CB_TKA_I_GAZ_Vodnik_PKT","UK3CB_TKA_I_LR_SF_M2","UK3CB_TKA_I_LR_SF_AGS30","UK3CB_TKA_I_BTR40_MG","UK3CB_TKA_I_BRDM2","UK3CB_TKA_I_BRDM2_ATGM"];
vehNATOLightUnarmed = ["UK3CB_TKA_I_BTR40","UK3CB_TKA_I_GAZ_Vodnik","UK3CB_TKA_I_LR_Open","UK3CB_TKA_I_Hilux_Closed","UK3CB_TKA_I_BRDM2_HQ"];
vehNATOTrucks = ["UK3CB_TKA_I_V3S_Closed","UK3CB_TKA_I_V3S_Open","UK3CB_TKA_I_V3S_Recovery"];
vehNATOCargoTrucks = [];
vehNATOAmmoTruck = "UK3CB_TKA_I_M113_supply";
vehNATORepairTruck = "UK3CB_TKA_I_V3S_Repair";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
//Armored
vehNATOAPC = ["UK3CB_TKA_I_MTLB_PKT","UK3CB_TKA_I_BMP1","UK3CB_TKA_I_BMP2","UK3CB_TKA_I_BMP2K","UK3CB_TKA_I_BTR60","UK3CB_TKA_I_GAZ_Vodnik_KVPT","UK3CB_TKA_I_GAZ_Vodnik_Cannon"];
vehNATOTank = "UK3CB_TKA_I_T55";
vehNATOAA = "UK3CB_TKA_I_ZsuTank";
vehNATOAttack = vehNATOAPC + [vehNATOTank];
//Boats
vehNATOBoat = "UK3CB_TKA_I_RHIB";
vehNATORBoat = "UK3CB_TKA_I_RHIB_Gunboat";
vehNATOBoats = [vehNATOBoat,vehNATORBoat];
//Planes
vehNATOPlane = "UK3CB_TKA_I_Su25SM_CAS";
vehNATOPlaneAA = "UK3CB_TKA_I_L39_AA";
vehNATOTransportPlanes = [];
//Heli
vehNATOPatrolHeli = "UK3CB_TKA_I_UH1H_M240";
vehNATOTransportHelis = ["UK3CB_TKA_I_Mi8","UK3CB_TKA_I_Mi8AMT",vehNATOPatrolHeli,"UK3CB_TKA_I_UH1H"];
vehNATOAttackHelis = ["UK3CB_TKA_I_UH1H_M240","UK3CB_TKA_I_Mi_24P","UK3CB_TKA_I_Mi_24V","UK3CB_TKA_I_Mi8AMTSh"];
//UAV
vehNATOUAV = "B_UAV_02_F";
vehNATOUAVSmall = "B_UAV_01_F";
//Artillery
vehNATOMRLS = "UK3CB_TKA_I_BM21";
vehNATOMRLSMags = "rhs_mag_40Rnd_122mm_rockets";
//Combined Arrays
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck, "UK3CB_TKA_I_V3S_Refuel", "UK3CB_TKA_I_Hilux_Open", vehNATORepairTruck,"UK3CB_TKA_I_UAZ_Closed"];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA] + vehNATOTransportPlanes;

//Militia Vehicles
if (gameMode != 4) then
	{
    	vehFIAArmedCar = "UK3CB_TKP_I_Datsun_Pickup_PKM";
    	vehFIATruck = "UK3CB_TKP_I_Hilux_Ipen";
    	vehFIACar = "UK3CB_TKP_I_Lada_Police";
	};

//Police Vehicles
vehPoliceCar = "UK3CB_TKP_I_Lada_Police";

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
NATOMG = "UK3CB_TKA_I_KORD_high";
staticATOccupants = "UK3CB_TKA_I_Kornet";
staticAAOccupants = "UK3CB_TKA_I_Igla_AA_pod";
NATOMortar = "UK3CB_TKA_I_D30";

//Static Weapon Bags
MGStaticNATOB = "RHS_Kord_Gun_Bag";
ATStaticNATOB = "RHS_Kornet_Gun_Bag";
AAStaticNATOB = "B_AA_01_weapon_F";
MortStaticNATOB = "RHS_Podnos_Gun_Bag";
//Short Support
supportStaticNATOB = "RHS_Kornet_Tripod_Bag";
//Tall Support
supportStaticNATOB2 = "RHS_Kord_Tripod_Bag";
//Mortar Support
supportStaticNATOB3 = "RHS_Podnos_Tripod_Bag";
<<<<<<< HEAD

////////////////////////////////////
//             ITEMS             ///
////////////////////////////////////
weaponsNato append ["UK3CB_FNFAL_FULL","UK3CB_FNFAL_PARA","UK3CB_Enfield_Rail","rhs_weap_igla","rhs_weap_svdp_wd_npz","rhs_weap_makarov_pm","rhs_weap_pb_6p9","UK3CB_RPK","UK3CB_M79","rhs_weap_pkp","rhs_weap_m21a","rhs_weap_m21s","rhs_weap_m70ab2","rhs_weap_m70b1","rhs_weap_m76","rhs_weap_savz58p","rhs_weap_savz58v","rhs_weap_savz58p_rail","rhs_weap_savz58v_rail","rhs_weap_pm63","rhs_weap_ak74m_camo","rhs_weap_ak74m_desert"];
smokeX append ["UK3CB_BAF_SmokeShell","UK3CB_BAF_SmokeShellRed","UK3CB_BAF_SmokeShellGreen","UK3CB_BAF_SmokeShellYellow","UK3CB_BAF_SmokeShellPurple","UK3CB_BAF_SmokeShellBlue","UK3CB_BAF_SmokeShellOrange"];
NVGoggles pushBack "rhs_1PN138";
itemsAAF append ["muzzle_snds_b","uk3cb_fnfal_suit","rhs_acc_dtk3","rhs_acc_dtk4long","rhs_acc_dtk4screws","rhs_acc_dtk4short","rhs_acc_pbs1","rhs_acc_pbs4","rhs_acc_tgpa","rhs_acc_tgpv","rhs_acc_ak5","rhs_acc_dtk","rhs_acc_dtk1","rhs_acc_dtk2","rhs_acc_dtkakm","rhs_acc_uuk","rhs_acc_1p29","rhs_acc_1p63","rhs_acc_1p78","rhs_acc_1p87","rhs_acc_1pn93_1","rhs_acc_1pn93_2","rhs_acc_rakursPM","rhs_acc_pgo7v","rhs_acc_pgo7v2","rhs_acc_pgo7v3","rhs_acc_pkas","rhs_acc_dh520x56","rhs_acc_pso1m2","rhs_acc_pso1m21","rhs_acc_ekp1","rhs_acc_ekp8_02","rhs_acc_ekp8_18","rhs_acc_nita"];
=======
>>>>>>> unstable
