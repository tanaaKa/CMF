/* 	
	Vehicle "factory" script
	By: tanaKa-
	Allows for factories that spawn pre-defined vehicles as allowed by the mission maker
	
	TODO:
		-Finalize list of vehicles relevant to coalition
		-Add heli spawns
		-Clean up code

		
	VEHICLE CLASSNAMES:
	
	Transport:
		NATO HEMTT - B_Truck_01_transport_F
		URAL - rhsgref_nat_ural
		GAZ66 Truck - rhs_gaz66_msv
		Prowler - B_CTRG_LSV_01_light_F
		Bongo Truck - B_G_Van_01_transport_F
		FMTV (D) - rhsusf_M1078A1P2_D_fmtv_usarmy
		Typhoon - O_Truck_03_covered_F
		Kamaz - O_Truck_02_transport_F
		Offroad - I_G_Offroad_01_F
	Fireteam Vehicles:
		M2 HMMWV (D) - rhsusf_m1025_d_s_m2
		DSHKm UAZ - rhsgref_nat_uaz_dshkm
		SPG UAZ - rhsgref_cdf_b_reg_uaz_spg9
		AGS UAZ - rhsgref_cdf_b_reg_uaz_ags
		M2 Technical - LOP_AA_Offroad_M2
		German Eagle - BWA3_Eagle_FLW100_Fleck
		M1117 ASV (W) - rhsusf_M1117_W
		Qilin M134 - O_T_LSV_02_armed_F
		Prowler XM214 - B_T_LSV_01_armed_F
		M1330 MRAP M2 - rhsusf_M1230_M2_usarmy_d
		ZU Truck (AA) - rhsgref_cdf_b_ural_Zu23
	Armor:
		Tank:
			M1A1 Abrams (D) - rhsusf_m1a1fep_d
			M1A2 Abrams (W) - rhsusf_m1a2sep1tuskiiwd_usarmy
			2A6M Leopard - BWA3_Leopard2A6M_Fleck
			T-55 - LOP_AFR_T55
			T-72 - rhs_t72bd_tv
			T-80 - rhs_t80um
			T-90 - rhs_t90_tv
		IFV:
			Puma - BWA3_Puma_Fleck
			Badger - B_T_APC_Wheeled_01_cannon_F
			Warrior (W) - Warrior_WD
			M2A3 Bradley (D) - RHS_M2A3_BUSKIII
			M6A2 Linebacker (D) - RHS_M6
			BMP1 Cannon - rhs_bmp1_msv
			BMP2 Autocannon - rhs_bmp2k_msv
			BMP3 TD - rhs_bmp3mera_msv
			BMD1 Cannon - rhs_bmd1p
			BMD2 Autocannon - rhs_bmd2
			BMD4 TD - rhs_bmd4ma_vdv
		APC:
			M113 M2 (W) - rhsusf_m113_usarmy
			M113 M240 (W) - rhsusf_m113_usarmy_M240
			M113 MK19 (W) - rhsusf_m113_usarmy_MMK19
			BRDM2 (W) - rhsgref_BRDM2
			BRDM ATGM - rhsgref_BRDM2_ATGM
		AA:
			ZSU-23 - LOP_CDF_ZSU234
	Helicopter:
		Transport:
			UH-80 Ghosthawk - B_Heli_Transport_01_F
			UH-60 Blackhawk - RHS_UH60M
			KA-60 Kasatka - O_Heli_Light_02_unarmed_F
			AW159 Wildcat - I_Heli_light_03_unarmed_F
			Mi-8 - RHS_Mi8mt_vdv 
			CH-47F Chinook - RHS_CH_47F
			MH-6M LB - RHS_MELB_MH6M
			Old Huey Slick - UH1C
			New Huey Slick- RHS_UH1Y_UNARMED_d
			CH-53 S-Stallion - rhs_usf_CH53E_USMC_D
		Attack:
			Mi-8 Rocket - RHS_Mi8MTV3_heavy_vvs
			Mi-48 Cayman - O_Heli_Attack_02_dynamicLoadout_F
			Mi-24V Hind - RHS_Mi24V_vdv
			KA-52 - RHS_Ka52_vvsc
			AH-64 Apache - RHS_AH64D_wd
			AH-6M LB - RHS_MELB_AH6M
			Old Huey Gunship - UH1H_Gunship
			New Huey Venom - RHS_UH1Y_d
			AH-1Z Cobra - RHS_AH1Z
*/


_factory = _this select 0;

//Set spawn locations for each side's factory
_bluspawnloc = getMarkerPos "vehfac1pad";
_bluairspawnloc = getMarkerPos "airfac1pad";
_indspawnloc = getMarkerPos "vehfac2pad";
_indairspawnloc = getMarkerPos "airfac2pad";
_opfspawnloc = getMarkerPos "vehfac3pad";
_opfairspawnloc = getMarkerPos "airfac3pad";

// CHANGE THESE TO MATCH YOUR FACTION! -------------------------------------------------
//BLUFOR Vics
_blutransport = "B_Truck_01_transport_F";
_bluftveh = "rhsusf_m1025_d_s_m2";
_bluarmor = "rhsusf_m1a1fep_d";
_bluheli = "B_Heli_Transport_01_F";

//INDFOR Vics
_indtransport = "rhsgref_nat_ural";
_indftveh = "rhsgref_nat_uaz_dshkm";
_indarmor = "LOP_AFR_T55";
_indheli = "I_Heli_light_03_unarmed_F";

//OPFOR  Vics
_opftransport = "rhs_gaz66_msv";
_opfftveh = "rhs_tigr_sts_msv";
_opfarmor = "rhs_t90_tv";
_opfheli = "RHS_Mi8mt_vdv";

//UNIVERSAL Vics
_boat = "B_Boat_Transport_01_F";