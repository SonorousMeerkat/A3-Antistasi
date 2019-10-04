////////////////////////////////////
//       NAMES AND FLAGS         ///
////////////////////////////////////
//Name Used for notifications
nameInvaders = "AFRF";

//SF Faction
factionMaleInvaders = "rhs_faction_vmf";
//Miltia Faction
if (gameMode == 4) then {factionFIA = "rhs_faction_msv"};

//Flag Images
CSATFlag = "rhs_Flag_Russia_F";
CSATFlagTexture = "rhsafrf\addons\rhs_main\data\flag_rus_co.paa";
flagCSATmrk = "rhs_flag_vmf";
if (isServer) then {"CSAT_carrier" setMarkerText "Russian Carrier"};
	
//Loot Crate
CSATAmmoBox = "O_supplyCrate_F";

////////////////////////////////////
//   PVP LOADOUTS AND VEHICLES   ///
////////////////////////////////////
//PvP Loadouts
CSATPlayerLoadouts = [
	//Team Leader
	["rhs_afrf_teamLeader"] call A3A_fnc_getLoadout,
	//Medic
	["rhs_afrf_medic"] call A3A_fnc_getLoadout,
	//Autorifleman
	["rhs_afrf_machineGunner"] call A3A_fnc_getLoadout,
	//Marksman
	["rhs_afrf_marksman"] call A3A_fnc_getLoadout,
	//Anti-tank Scout
	["rhs_afrf_AT"] call A3A_fnc_getLoadout,
	//AT2
	["rhs_afrf_AT2"] call A3A_fnc_getLoadout
];

//PVP Player Vehicles
vehCSATPVP = ["rhs_tigr_vdv","rhs_uaz_vdv","rhsgref_ins_g_uaz_dshkm_chdkz"];

////////////////////////////////////
//             UNITS             ///
////////////////////////////////////
//Military Units
CSATGrunt = "rhs_vmf_flora_rifleman";
CSATOfficer = "rhs_vmf_flora_officer";
CSATBodyG = "rhs_vmf_recon_efreitor";
CSATCrew = "rhs_vmf_flora_armoredcrew";
CSATMarksman = "rhs_vmf_flora_marksman";
staticCrewInvaders = "rhs_vmf_flora_rifleman_lite";
CSATPilot = "rhs_pilot_tan";

//Militia Units
if (gameMode == 4) then
	{
	FIARifleman = "rhs_msv_emr_rifleman";
	FIAMarksman = "rhs_msv_emr_marksman";
	};

////////////////////////////////////
//            GROUPS             ///
////////////////////////////////////
//Military Groups
//Teams
groupsCSATSentry = ["rhs_vdv_efreitor","rhs_vdv_rifleman"];
groupsCSATSniper = ["rhs_vdv_marksman_asval","rhs_vdv_rifleman_asval"];
groupsCSATsmall = [groupsCSATSentry,["rhs_vdv_recon_rifleman_scout_akm","rhs_vdv_recon_rifleman_scout_akm"],groupsCSATSniper];
//Fireteams
groupsCSATAA = ["rhs_vdv_flora_junior_sergeant","rhs_vdv_flora_aa","rhs_vdv_flora_aa","rhs_vdv_flora_aa"];
groupsCSATAT = ["rhs_vdv_flora_junior_sergeant","rhs_vdv_flora_at","rhs_vdv_flora_strelok_rpg_assist","rhs_vdv_flora_LAT"];
groupsCSATmid = [["rhs_vdv_flora_efreitor","rhs_vdv_flora_rifleman","rhs_vdv_flora_rifleman","rhs_vdv_flora_medic"],groupsCSATAA,groupsCSATAT];
//Squads
CSATSquad = ["rhs_vdv_mflora_sergeant","rhs_vdv_mflora_junior_sergeant","rhs_vdv_mflora_grenadier","rhs_vdv_mflora_machinegunner","rhs_vdv_mflora_at","rhs_vdv_mflora_strelok_rpg_assist","rhs_vdv_mflora_rifleman","rhs_vdv_mflora_medic"];
CSATSpecOp = ["rhs_vmf_recon_sergeant","rhs_vmf_recon_rifleman_scout","rhs_vmf_recon_efreitor","rhs_vmf_recon_arifleman","rhs_vmf_recon_machinegunner_assistant","rhs_vmf_flora_engineer","rhs_vmf_recon_rifleman_lat","rhs_vmf_recon_medic"];
groupsCSATSquad =
	[
	CSATSquad,
	["rhs_vdv_mflora_sergeant","rhs_vdv_mflora_junior_sergeant","rhs_vdv_mflora_machinegunner","rhs_vdv_mflora_rifleman","rhs_vdv_mflora_marksman","rhs_vdv_mflora_machinegunner_assistant","rhs_vdv_mflora_LAT","rhs_vdv_mflora_medic"],
	["rhs_vdv_mflora_sergeant","rhs_vdv_mflora_junior_sergeant","rhs_vdv_mflora_machinegunner","rhs_vdv_mflora_rifleman","rhs_vdv_mflora_marksman","rhs_vdv_mflora_machinegunner_assistant","rhs_vdv_mflora_aa","rhs_vdv_mflora_medic"]
	];

//Militia Groups
if (gameMode == 4) then
	{
	//Teams
	groupsFIASmall =
		[
		["rhs_msv_emr_grenadier",FIARifleman],
		[FIAMarksman,FIARifleman]
		];
	//Fireteams
	groupsFIAMid =
		[
		["rhsgref_hidf_teamleader","rhs_msv_emr_machinegunner",FIARifleman,"rhs_msv_emr_grenadier"],
		["rhsgref_hidf_teamleader","rhs_msv_emr_machinegunner",FIARifleman,"rhs_msv_emr_at"],
		["rhsgref_hidf_teamleader","rhs_msv_emr_machinegunner",FIARifleman,"rhs_msv_emr_engineer"]
		];
	//Squads
	FIASquad = ["rhs_msv_emr_officer","rhs_msv_emr_grenadier","rhs_msv_emr_machinegunner","rhs_msv_emr_rifleman","rhs_msv_emr_marksman","rhs_msv_emr_engineer","rhs_msv_emr_at","rhs_msv_emr_medic"];
	groupsFIASquad = [FIASquad];
	};

////////////////////////////////////
//           VEHICLES            ///
////////////////////////////////////
//Military Vehicles
//Lite
vehCSATBike = "O_T_Quadbike_01_ghex_F";
vehCSATLightArmed = ["rhsgref_BRDM2_vdv","rhsgref_BRDM2_HQ_vdv","rhsgref_BRDM2_ATGM_vdv","rhs_tigr_sts_vdv"];
vehCSATLightUnarmed = ["rhs_tigr_vdv","rhs_uaz_vdv","rhs_tigr_m_msv"];
vehCSATTrucks = ["rhs_kamaz5350_vdv","rhs_kamaz5350_open_vdv","RHS_Ural_Open_VDV_01","rhs_zil131_vdv","RHS_Ural_VDV_01"];
vehCSATAmmoTruck = "rhs_gaz66_ammo_vmf";
vehCSATLight = vehCSATLightArmed + vehCSATLightUnarmed;
//Armored
vehCSATAPC = ["rhs_bmd1r","rhs_bmp1p_vdv","rhs_bmd1p","rhs_bmd2m","rhs_bmp1p_vdv","rhs_bmp2k_vdv","rhs_btr80a_vdv","rhsbmp3mera_msv","rhs_bmd1PK"];
vehCSATTank = "rhs_t90sab_tv";
vehCSATAA = "rhs_zsu234_aa";
vehCSATAttack = vehCSATAPC + [vehCSATTank];
//Boats
vehCSATBoat = "O_T_Boat_Armed_01_hmg_F";
vehCSATRBoat = "O_T_Boat_Transport_01_F";
vehCSATBoats = [vehCSATBoat,vehCSATRBoat,"rhs_btr80a_vdv"];
//Planes
vehCSATPlane = "RHS_Su25SM_CAS_vvs";
vehCSATPlaneAA = "RHS_mig29s_vvs";
vehCSATTransportPlanes = [];
//Heli
vehCSATPatrolHeli = "rhs_ka60_c";
vehCSATTransportHelis = ["RHS_Mi8AMT_vvsc","RHS_Mi8mt_vvsc","RHS_Mi8MTV3_vvsc",vehCSATPatrolHeli];
vehCSATAttackHelis = ["RHS_Mi24P_vvsc","RHS_Mi8AMTSh_vvsc","RHS_Ka52_vvs","rhs_mi28n_vvs"];
//UAV
vehCSATUAV = "rhs_pchela1t_vvsc";
vehCSATUAVSmall = "O_UAV_01_F";
//Artillery
vehCSATMRLS = "rhs_2s3_tv";
vehCSATMRLSMags = "rhs_mag_HE_2a33";
//Combined Arrays
vehCSATNormal = vehCSATLight + vehCSATTrucks + [vehCSATAmmoTruck, "rhs_gaz66_repair_vdv","RHS_Ural_Fuel_VDV_01"];
vehCSATAir = vehCSATTransportHelis + vehCSATAttackHelis + [vehCSATPlane,vehCSATPlaneAA] + vehCSATTransportPlanes;

//Militia Vehicles
if (gameMode == 4) then
	{
	vehFIAArmedCar = "rhs_tigr_sts_3camo_msv";
	vehFIATruck = "rhs_zil131_open_msv";
	vehFIACar = "rhs_uaz_open_MSV_01";
	};

////////////////////////////////////
//        STATIC WEAPONS         ///
////////////////////////////////////
//Assembled Statics
CSATMG = "rhs_KORD_high_VMF";
staticATInvaders = "rhs_Kornet_9M133_2_vmf";
staticAAInvaders = "RHS_ZU23_MSV";
CSATMortar = "rhs_2b14_82mm_vmf";

//Static Weapon Bags
MGStaticCSATB = "RHS_Kord_Gun_Bag";
ATStaticCSATB = "RHS_Kornet_Gun_Bag";
AAStaticCSATB = "O_AA_01_weapon_F";
MortStaticCSATB = "RHS_Podnos_Gun_Bag";
//Short Support
supportStaticCSATB = "RHS_Kord_Tripod_Bag";
//Tall Support
supportStaticCSATB2 = "RHS_Kornet_Tripod_Bag";
//Mortar Support
supportStaticCSATB3 = "RHS_Podnos_Bipod_Bag";
<<<<<<< HEAD

////////////////////////////////////
//             ITEMS             ///
////////////////////////////////////
weaponsCSAT append ["rhs_weap_ak103","rhs_weap_ak104_npz","rhs_weap_ak105_npz","rhs_weap_ak105","rhs_weap_akmn","rhs_weap_ak74_2","rhs_weap_ak74_gp25","rhs_weap_ak74m_2mag","rhs_weap_ak74m_gp25_1p29","rhs_weap_ak74n_gp25","rhs_weap_akm","rhs_weap_akm_gp25","rhs_weap_asval","rhs_weap_svdp","rhs_weap_svds","rhs_weap_t5000","rhs_weap_vss","rhs_weap_aks74u","rhs_weap_rpg26","rhs_weap_rpg7","rhs_weap_pb_6p9","rhs_weap_igla","rhs_weap_pya","rhs_weap_pkm","rhs_weap_pkp","rhs_weap_makarov_pm","rhs_weap_rpg7_pgo","rhs_weap_rshg2"];
ammunitionCSAT append ["rhs_mag_nspn_yellow","rhs_mag_nspn_red","rhs_mag_nspn_green","rhs_mag_nspd"];
smokeX append ["rhs_mag_nspd","rhs_mag_rdg2_white","rhs_mag_rdg2_black","rhs_mag_zarya2","rhs_mag_rgo","rhs_mag_rgn","rhs_mag_plamyam","rhs_mag_fakels","rhs_mag_fakel"];
NVGoggles pushBack"rhs_1PN138";
itemsAAF append ["rhs_acc_2dpZenit","rhs_acc_2dpZenit_ris","rhs_acc_uuk","rhs_acc_dtk1l","rhs_acc_ak5","rhs_acc_dtk","rhs_acc_dtk1983","rhs_acc_dtk1","rhs_acc_dtk1p","rhs_acc_dtk2","rhs_acc_dtk3","rhs_acc_dtk4short","rhs_acc_dtk4screws","rhs_acc_dtk4long","rhs_75Rnd_762x39mm_tracer","rhs_acc_pbs1","rhs_acc_pbs4","rhs_acc_perst1ik","rhs_acc_perst1ik_ris","rhs_acc_perst3","rhs_acc_perst3_top","rhs_acc_perst3_2dp_h","rhs_acc_perst3_2dp_light_h","rhs_acc_pgs64","rhs_acc_pgs64_74u","rhs_acc_pgs64_74un","rhs_acc_grip_rk2","rhs_acc_grip_rk6","rhs_acc_tgpa","rhs_acc_tgpv","rhs_pdu4","rhs_tr8_periscope","rhs_tr8_periscope_pip"];
=======
>>>>>>> unstable