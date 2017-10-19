// Author: Cpl. Koala
// Description: paste your loadout config from the arseanal exporter
#include "undef.hpp" // Reset defines

// ------------------- PASTE BELOW THIS LINE

// Camo set
#define CAMO_UNIFORM "milgp_u_g3_field_set_atacsau","milgp_u_g3_field_set_rolled_atacsau"
#define CAMO_VEST "milgp_v_marciras_assaulter_belt_rgr","milgp_v_marciras_grenadier_belt_rgr","milgp_v_marciras_hgunner_belt_rgr","milgp_v_marciras_marksman_belt_rgr","milgp_v_marciras_medic_belt_rgr","milgp_v_marciras_teamleader_belt_RGR"
#define CAMO_BACKPACK "milgp_bp_Breacher_rgr","milgp_bp_hydration_rgr","milgp_bp_Pointman_rgr","milgp_bp_Tomahawk_rgr"
#define CAMO_HEADGEAR "milgp_h_opscore_01_RGR","milgp_h_opscore_01_goggles_RGR","milgp_h_opscore_02_RGR","milgp_h_opscore_02_goggles_RGR","milgp_h_opscore_03_RGR","milgp_h_opscore_03_goggles_RGR","milgp_h_opscore_04_RGR","milgp_h_opscore_04_goggles_RGR","milgp_h_opscore_05_RGR","milgp_h_opscore_05_goggles_RGR","milgp_h_opscore_06_RGR","milgp_h_opscore_06_goggles_RGR"
// Rifle
#define RIFLE "hlc_rifle_auga1carb_t"
#define RIFLE_MAG "hlc_30Rnd_556x45_B_AUG:8", "hlc_30Rnd_556x45_T_AUG:2"
#define RIFLE_ATTACHMENTS ""
#define AAR_ATTACHMENTS RIFLE_ATTACHMENTS
#define ALT_OPTICS "RH_compM2l","RH_barska_rds","UK3CB_BAF_Eotech"
// GL Rifle
#define GLRIFLE "hlc_rifle_auga3_GL"
#define GLRIFLE_MAG "hlc_30Rnd_556x45_B_AUG:8", "hlc_30Rnd_556x45_T_AUG:2"
#define GLRIFLE_MAG_SMOKE "1Rnd_Smoke_Grenade_shell:2","1Rnd_SmokeRed_Grenade_shell:2"
#define GLRIFLE_MAG_HE "1Rnd_HE_Grenade_shell:5"
#define GLRIFLE_MAG_FLARE "UGL_FlareYellow_F:4"
// Carbine
#define CARBINE "hlc_rifle_auga1carb_t"
#define CARBINE_MAG "hlc_30Rnd_556x45_B_AUG:8", "hlc_30Rnd_556x45_T_AUG:2"
// AR
#define AR "rhs_weap_m249"
#define AR_MAG "rhs_200rnd_556x45_B_SAW:3", "rhs_200rnd_556x45_T_SAW:2"
// AT
#define AT "rhs_weap_m72a7"
#define AT_MAG "rhs_m72a7_mag:1"
// MMG
#define MMG "UK3CB_BAF_L7A2"
#define MMG_MAG "UK3CB_BAF_762_100Rnd:3", "UK3CB_BAF_762_100Rnd_T:2"
// MAT
#define MAT "launch_B_Titan_short_F"
#define MAT_MAG "Titan_AT:1"
#define MAT_MAG2 "Titan_AP:1"
#define MAT_OPTIC ""

// -------------------- PASTE ABOVE THIS LINE

// SAM
#define SAM "rhs_weap_fim92"
#define SAM_MAG "rhs_fim92_mag:3"
#define SAM_MAG2 "rhs_fim92_mag:2"
// Sniper Rifle
#define SNIPER "UK3CB_BAF_L135A1"
#define SNIPER_MAG "UK3CB_BAF_127_10Rnd:5"
// Spotter Rifle
#define SPOTTER RIFLE
#define SPOTTER_MAG RIFLE_MAG
// SMG
#define SMG CARBINE
#define SMG_MAG CARBINE_MAG
// Pistol
#define PISTOL "hgun_ACPC2_F"
#define PISTOL_MAG "9Rnd_45ACP_Mag:3"
// Grenades
#define BASE_FRAG "rhs_mag_m67:2"
#define BASE_GRENADES BASE_FRAG,BASE_SMOKES
#define LEADER_GRENADES BASE_FRAG,LEADER_SMOKES,"Chemlight_blue:2"
// Gear
#define BASE_TOOLS COMMON_TOOLS
#define LEADER_TOOLS COMMON_LEADER_TOOLS,KEY_WEST
#define BASE_LINKED COMMON_LINKED
#define LEADER_LINKED COMMON_LEADER_LINKED

class Car {
  TransportWeapons[] = {AT};
  TransportMagazines[] = {RIFLE_MAG,RIFLE_MAG,CARBINE_MAG,AR_MAG,AR_MAG,GLRIFLE_MAG_HE};
  TransportItems[] = {BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL};
};
class Tank {
  TransportWeapons[] = {AT};
  TransportMagazines[] = {RIFLE_MAG,RIFLE_MAG,CARBINE_MAG,AR_MAG,AR_MAG,GLRIFLE_MAG_HE};
  TransportItems[] = {BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL};
};
class Helicopter {
  TransportMagazines[] = {RIFLE_MAG,RIFLE_MAG,CARBINE_MAG,AR_MAG,AR_MAG,GLRIFLE_MAG_HE};
  TransportItems[] = {BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL};
};
class Plane {};
class Ship_F {};

class Soldier_F {// rifleman
  uniform[] = {CAMO_UNIFORM};
  vest[] = {CAMO_VEST};
  headgear[] = {CAMO_HEADGEAR};
  backpack[] = {CAMO_BACKPACK};
  backpackItems[] = {BASE_MEDICAL};
  weapons[] = {RIFLE};
  magazines[] = {RIFLE_MAG,BASE_GRENADES};
  items[] = {BASE_TOOLS};
  linkedItems[] = {BASE_LINKED};
  attachments[] = {RIFLE_ATTACHMENTS};
};
class Fic_Soldier_Carbine: Soldier_F {// carbine-man
  weapons[] = {CARBINE};
  magazines[] = {CARBINE_MAG,BASE_GRENADES};
};
class Soldier_TL_F: Soldier_F {// FTL
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,LEADER_GRENADES};
  items[] += {LEADER_TOOLS,RADIO_MR};
  linkedItems[] += {LEADER_LINKED,BINOS};
  opticChoices[] = {ALT_OPTICS};
};
class Soldier_SL_F: Soldier_TL_F {// SL
  handguns[] = {PISTOL};
  magazines[] += {PISTOL_MAG};
  linkedItems[] = {BASE_LINKED,LEADER_LINKED,RANGE_FINDER};
  items[] += {RADIO_MR,RADIO_LR};
  opticChoices[] = {ALT_OPTICS};
};
class officer_F: Soldier_SL_F {// CO and DC
  items[] += {RADIO_LR,RADIO_MR};
  opticChoices[] = {ALT_OPTICS};
};
class soldier_UAV_F: Soldier_F {
  backpack[] = {"B_UAV_01_backpack_F"};
  linkedItems[] += {"B_uavterminal"};
  items[] += {RADIO_MR};
};
class Soldier_AR_F: Soldier_F {// AR
  weapons[] = {AR};
  magazines[] = {AR_MAG,PISTOL_MAG,BASE_GRENADES};
  handguns[] = {PISTOL};
};
class Soldier_AAR_F: Soldier_F {// AAR
  backpackItems[] += {AR_MAG};
  attachments[] = {AAR_ATTACHMENTS};
  linkedItems[] += {BINOS};
};
class Soldier_LAT_F: Fic_Soldier_Carbine {// RAT
  magazines[] += {AT_MAG};
  launchers[] = {AT};
};
class Soldier_GL_F: Soldier_F { // Grenadier
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,BASE_GRENADES};
};
class medic_F: Fic_Soldier_Carbine {// Medic
  magazines[] = {CARBINE_MAG,MEDIC_GRENADES};
  backpackItems[] = {MEDIC_MEDICAL};
  items[] += {RADIO_MR};
};
class Fic_Spotter: Soldier_F {
  linkedItems[] += {RANGE_FINDER};
};
class support_MG_F: Soldier_AR_F {// MMG
  weapons[] = {MMG};
  magazines[] = {MMG_MAG,PISTOL_MAG,BASE_GRENADES};
  attachments[] = {};
};
class Soldier_A_F: Fic_Spotter {// MMG Spotter/Ammo Bearer
  backpackItems[] += {MMG_MAG};
};
class soldier_AT_F: Fic_Soldier_Carbine {// MAT Gunner
  backpackItems[] = {};
  magazines[] += {MAT_MAG};
  items[] += {BASE_MEDICAL};
  launchers[] = {MAT};
  secondaryAttachments[] = {MAT_OPTIC};
};
class Soldier_AAT_F: Fic_Spotter {// MAT Spotter/Ammo Bearer
  backpackItems[] = {};
  magazines[] += {MAT_MAG};
  items[] += {BASE_MEDICAL};
};
class soldier_AA_F: Fic_Soldier_Carbine {// SAM Gunner
  SAM_GEAR("B_Carryall_cbr", SAM_MAG)
  launchers[] = {SAM};
};
class Soldier_AAA_F: Fic_Spotter {// SAM Spotter/Ammo Bearer
  SAM_GEAR("B_Carryall_cbr", SAM_MAG2)
};
class support_Mort_F: Fic_Soldier_Carbine {// Mortar Gunner
  MORTAR_GEAR("B_Mortar_01_weapon_F")
};
class support_AMort_F: Fic_Spotter {// Assistant Mortar
  MORTAR_GEAR("B_Mortar_01_support_F")
};
class spotter_F: Fic_Spotter {// Spotter
  weapons[] = {SPOTTER};
  magazines[] = {SPOTTER_MAG,BASE_GRENADES};
  items[] += {RADIO_MR,"ACE_ATragMX","ACE_Kestrel4500","ACE_RangeCard"};
  linkedItems[] += {LEADER_LINKED};
};
class sniper_F: spotter_F {// Sniper
  weapons[] = {SNIPER};
  magazines[] = {SNIPER_MAG,BASE_GRENADES};
  items[] = {BASE_TOOLS,"ACE_RangeCard"};
  linkedItems[] = {BASE_LINKED};
  attachments[] = {"UK3CB_BAF_SB31250_Ghillie"};
};
class Helipilot_F {// Pilot
  // uniform[] = {"UK3CB_BAF_U_HeliPilotCoveralls_RAF"};
  // backpack[] = {"B_AssaultPack_blk"};
  vest[] = {CAMO_VEST};
  headgear[] = {"rhsusf_hgu56p"};
  weapons[] = {SMG};
  magazines[] = {SMG_MAG,CREW_GRENADES};
  backpackItems[] = {KEY_WEST,RADIO_LR};
  items[] = {BASE_MEDICAL,BASE_TOOLS,LEADER_TOOLS,RADIO_MR};
  linkedItems[] = {BASE_LINKED,LEADER_LINKED};
};
class helicrew_F: Helipilot_F {}; // Pilot
class crew_F: Fic_Soldier_Carbine {// Crew
  // backpack[] = {"UK3CB_BAF_B_Carryall_DDPM"};
  magazines[] = {CARBINE_MAG,CREW_GRENADES};
  backpackItems[] = {KEY_WEST,RADIO_LR};
  linkedItems[] = {BASE_LINKED,LEADER_LINKED,BINOS};
  items[] += {BASE_MEDICAL};
};
class soldier_repair_F: crew_F {// Repair Specialist
  // backpack[] = {"UK3CB_BAF_B_Carryall_DDPM"};
  backpackItems[] = {"Toolkit",RADIO_MR,KEY_WEST};
  linkedItems[] = {BASE_LINKED,LEADER_LINKED};
};
class Fic_eng: soldier_repair_F {
  items[] += {BASE_ENG};
  backpackItems[] = {};
};
class soldier_exp_F: Fic_eng {// Explosive Specialist
  magazines[] += {BASE_EXP};
  backpackItems[] = {"Toolkit"};
};
class engineer_F: Fic_eng {// Mine Specialist
  magazines[] += {BASE_MINE};
};
class fallback: Soldier_F {}; // This means any faction member who doesn't match something will use this loadout