// Author: tanaKa-
// Description: paste your loadout config from the arseanal exporter
#include "undef.hpp" // Reset defines

// ------------------- PASTE BELOW THIS LINE

// Camo set
#define CAMO_UNIFORM "rhs_uniform_acu_ucp"
#define CAMO_VEST "rhsusf_iotv_ucp_Rifleman"
#define CAMO_BACKPACK "rhsusf_assault_eagleaiii_ucp"
#define CAMO_HEADGEAR "rhsusf_ach_helmet_ucp","rhsusf_ach_helmet_ess_ucp"
// Rifle
#define RIFLE "rhs_weap_m4_carryhandle_pmag"
#define RIFLE_MAG "30Rnd_556x45_Stanag:10"
#define RIFLE_ATTACHMENTS "rhsusf_acc_anpeq15side_bk", "RH_compM2", "rhsusf_acc_grip3"
#define AAR_ATTACHMENTS RIFLE_ATTACHMENTS
#define ALT_OPTICS "rhsusf_acc_compm4","rhsusf_acc_eotech_552","RH_compM2","rhsusf_acc_T1_high"
// GL Rifle
#define GLRIFLE "rhs_weap_m4_m320","rhs_weap_m4_m203"
#define GLRIFLE_MAG "30Rnd_556x45_Stanag:8","30Rnd_556x45_Stanag_Tracer_Red:2"
#define GLRIFLE_MAG_SMOKE "1Rnd_Smoke_Grenade_shell:2","1Rnd_SmokeRed_Grenade_shell:2"
#define GLRIFLE_MAG_HE "1Rnd_HE_Grenade_shell:5"
#define GLRIFLE_MAG_HE2 "1Rnd_HE_Grenade_shell:10"
#define GLRIFLE_MAG_FLARE "UGL_FlareYellow_F:4"
// Carbine
#define CARBINE "rhs_weap_m4_carryhandle_mstock"
#define CARBINE_MAG "30Rnd_556x45_Stanag:10"
// AR
#define AR "rhs_weap_m249_pip"
#define AR_MAG "rhsusf_100Rnd_556x45_soft_pouch:6"
// AT
#define AT "rhs_weap_M136_hedp"
#define AT_MAG "rhs_m136_hedp_mag:1"
// MMG
#define MMG "rhs_weap_m240B_CAP"
#define MMG_MAG "rhsusf_50Rnd_762x51:9"
// MAT
#define MAT "rhs_weap_maaws"
#define MAT_MAG "rhs_mag_maaws_HEAT:2","rhs_mag_maaws_HEDP:1"
#define MAT_MAG2 "rhs_mag_maaws_HEAT:2","rhs_mag_maaws_HEDP:2"
#define MAT_OPTIC "rhs_optic_maaws"

// -------------------- PASTE ABOVE THIS LINE

// SAM
#define SAM "rhs_weap_fim92"
#define SAM_MAG "rhs_fim92_mag:2"
#define SAM_MAG2 "rhs_fim92_mag:2"
// Sniper Rifle
#define SNIPER "rhs_weap_m24sws_blk"
#define SNIPER_MAG "rhsusf_5Rnd_762x51_m118_special_Mag:6"
// Spotter Rifle
#define SPOTTER "RH_SAMR"
#define SPOTTER_MAG "30Rnd_556x45_Stanag:6","30Rnd_556x45_Stanag_Tracer_Red:4"
#define SPOTTER2 "RH_Mk12mod1"
#define SPOTTER2_MAG "30Rnd_556x45_Stanag:6","30Rnd_556x45_Stanag_Tracer_Red:4"
#define DMRIFLE_OPTICS "rhsusf_acc_ACOG_RMR","RH_ta01nsn"
#define DMRIFLE_ATT "RH_HBLM"
// SMG
#define SMG "hlc_smg_mp5a3"
#define SMG_MAG "hlc_30Rnd_9x19_B_MP5:6"
// Shotgun
#define SG "rhs_weap_M590_5RD"
#define SG_MAG "rhsusf_5Rnd_00Buck:6"
// M32
#define HGREN "rhs_weap_m32"
#define HGREN_MAG "rhsusf_mag_6Rnd_M441_HE:4","rhsusf_mag_6Rnd_M714_white:2"
// IAR
#define IAR "RH_M27IAR"
#define IAR_MAG "RH_60Rnd_556x45_M855A1:8"
// Pistol
#define PISTOL "rhsusf_weap_m9"
#define PISTOL_MAG "rhsusf_mag_15Rnd_9x19_JHP:3"
#define FLAREPISTOL "BWA3_P2A1"
#define FLAREPISTOL_MAG "BWA3_1Rnd_Flare_Singlestar_Green:3","BWA3_1Rnd_Flare_Singlestar_Red:3"
// Grenades
#define BASE_FRAG "rhs_mag_m67:2"
#define BASE_GRENADES BASE_FRAG,BASE_SMOKES
#define LEADER_GRENADES BASE_FRAG,LEADER_SMOKES,"Chemlight_blue:2"
// Gear
#define BASE_TOOLS COMMON_TOOLS
#define LEADER_TOOLS COMMON_LEADER_TOOLS,KEY_WEST
#define BASE_LINKED COMMON_LINKED,NODS
#define LEADER_LINKED COMMON_LEADER_LINKED
// Class Gear
#define BAG_MEDIC "usm_pack_m5_medic"
#define BAG_MEDIUM "rhsusf_assault_eagleaiii_ucp"
#define BAG_HEAVY "milgp_b_patrol_01_rgr"
#define GL_VEST "rhsusf_iotv_ucp_Grenadier"
#define LDR_VEST "rhsusf_iotv_ucp_Squadleader"
#define MEDIC_VEST "rhsusf_iotv_ucp_Medic"
#define ENG_VEST "rhsusf_iotv_ucp_Repair"
#define AR_VEST "rhsusf_iotv_ucp_SAW"
#define IAR_VEST CAMO_VEST
#define MRK_VEST CAMO_VEST
#define LDR_HEADGEAR "rhsusf_ach_helmet_headset_ucp"
#define LITE_VEST "rhsusf_iotv_ucp" // Pilot, Crew, Sniper, Spotter
#define SNIPER_UNIFORM "U_B_FullGhillie_sard"
#define PILOT_UNIFORM CAMO_UNIFORM
#define PILOT_HEADGEAR "rhsusf_hgu56p_visor_black"
#define CREW_UNIFORM CAMO_UNIFORM
#define CREW_HEADGEAR "rhsusf_cvc_green_helmet"
#define GOGGLES "rhs_ess_black","rhs_googles_black","rhsusf_oakley_goggles_blk"

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
  goggles[] = {GOGGLES};
  headgear[] = {CAMO_HEADGEAR};
  backpack[] = {CAMO_BACKPACK};
  backpackItems[] = {BASE_MEDICAL};
  weapons[] = {RIFLE};
  magazines[] = {RIFLE_MAG,BASE_GRENADES};
  items[] = {BASE_TOOLS};
  linkedItems[] = {BASE_LINKED};
  attachments[] = {RIFLE_ATTACHMENTS};
  opticChoices[] = {ALT_OPTICS};
};
class Fic_Soldier_Carbine: Soldier_F {// carbine-man
  weapons[] = {CARBINE};
  magazines[] = {CARBINE_MAG,BASE_GRENADES};
};
class Survivor_F: Soldier_F { // FT CLS
   backpackItems[] = {CLS_MEDICAL};
};
class soldier_M_F: Soldier_F { // Marksman
  weapons[] = {SPOTTER};
  vest[] = {MRK_VEST};
  handguns[] = {PISTOL};
  magazines[] = {SPOTTER_MAG,PISTOL_MAG,BASE_GRENADES};
  attachments[] = {DMRIFLE_OPTICS,DMRIFLE_ATT};
  opticChoices[] = {DMRIFLE_OPTICS};
};
class Soldier_GL_F: Soldier_F { // Grenadier
  vest[] = {GL_VEST};
  weapons[] = {GLRIFLE};
  magazines[] = {RIFLE_MAG,GLRIFLE_MAG_HE2,BASE_GRENADES};
};
class Soldier_TL_F: Soldier_F {// FTL
  handguns[] = {PISTOL};
  headgear[] = {LDR_HEADGEAR};
  weapons[] = {GLRIFLE};
  vest[] = {LDR_VEST};
  backpack[] = {BAG_MEDIUM};
  magazines[] = {PISTOL_MAG,GLRIFLE_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,LEADER_GRENADES};
  items[] += {LEADER_TOOLS,RADIO_MR};
  linkedItems[] += {BINOS,NODS2};
};
class Soldier_SL_F: Soldier_TL_F {// SL
  headgear[] = {"rhsusf_patrolcap_ucp"};
  linkedItems[] = {BASE_LINKED,BINOS,NODS2};
  items[] += {RADIO_LR};
};
class officer_F: Soldier_SL_F {// CO and DC
  items[] += {};
  linkedItems[] += {};
};
class soldier_UAV_F: Soldier_F {
  backpack[] = {"B_UAV_01_backpack_F"};
  linkedItems[] += {"B_uavterminal"};
  items[] += {RADIO_LR};
};
class Soldier_AR_F: Soldier_F {// AR
  vest[] = {AR_VEST};
  weapons[] = {AR};
  backpack[] = {BAG_MEDIUM};
  magazines[] = {AR_MAG,BASE_GRENADES};
};
class Soldier_AAR_F: Soldier_F {// AAR
  backpack[] = {BAG_MEDIUM};
  backpackItems[] += {AR_MAG};
  attachments[] = {AAR_ATTACHMENTS};
  linkedItems[] += {BINOS};
};
class Soldier_LAT_F: Soldier_F {// RAT
  magazines[] += {AT_MAG};
  launchers[] = {AT};
};
class medic_F: Fic_Soldier_Carbine {// Medic
  magazines[] = {CARBINE_MAG,MEDIC_GRENADES};
  backpack[] = {BAG_MEDIC};
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
  backpack[] = {BAG_HEAVY};
  backpackItems[] = {};
  magazines[] += {MAT_MAG};
  items[] += {BASE_MEDICAL};
  launchers[] = {MAT};
  secondaryAttachments[] = {MAT_OPTIC};
};
class Soldier_AAT_F: Fic_Spotter {// MAT Spotter/Ammo Bearer
  backpackItems[] = {};
  backpack[] = {BAG_HEAVY};
  magazines[] += {MAT_MAG};
  items[] += {BASE_MEDICAL};
};
class soldier_AA_F: Fic_Soldier_Carbine {// SAM Gunner
  SAM_GEAR(BAG_HEAVY, SAM_MAG)
  launchers[] = {SAM};
};
class Soldier_AAA_F: Fic_Spotter {// SAM Spotter/Ammo Bearer
  SAM_GEAR(BAG_HEAVY, SAM_MAG2)
};
class support_Mort_F: Fic_Soldier_Carbine {// Mortar Gunner
  MORTAR_GEAR("B_Mortar_01_weapon_F")
};
class support_AMort_F: Fic_Spotter {// Assistant Mortar
  MORTAR_GEAR("B_Mortar_01_support_F")
};
class spotter_F: Fic_Spotter {// Spotter
  weapons[] = {SPOTTER};
  vest[] = {LITE_VEST};
  headgear[] = {"rhs_Booniehat_ucp"};
  attachments[] = {"RH_ta01nsn","RH_TD_ACB_b","RH_fa556"};
  magazines[] = {SPOTTER_MAG,BASE_GRENADES};
  items[] += {RADIO_MR,"ACE_ATragMX","ACE_Kestrel4500","ACE_RangeCard"};
  linkedItems[] += {LEADER_LINKED};
};
class sniper_F: spotter_F {// Sniper
  weapons[] = {SNIPER};
  magazines[] = {SNIPER_MAG,PISTOL_MAG,BASE_GRENADES};
  handguns[] = {PISTOL};
  items[] = {BASE_TOOLS,"ACE_RangeCard"};
  linkedItems[] = {BASE_LINKED};
  attachments[] = {"rhsusf_acc_M8541"};
};
class Helipilot_F {// Pilot
  uniform[] = {PILOT_UNIFORM};
  // backpack[] = {"B_AssaultPack_blk"};
  vest[] = {LITE_VEST};
  headgear[] = {PILOT_HEADGEAR};
  weapons[] = {SMG};
  handguns[] = {FLAREPISTOL};
  magazines[] = {SMG_MAG,FLAREPISTOL_MAG,CREW_GRENADES};
  backpackItems[] = {KEY_WEST,RADIO_LR};
  items[] = {BASE_MEDICAL,BASE_TOOLS,LEADER_TOOLS,RADIO_MR};
  linkedItems[] = {BASE_LINKED,LEADER_LINKED,NODS3};
};
class helicrew_F: Helipilot_F {}; // Pilot
class crew_F: Fic_Soldier_Carbine {// Crew
  // backpack[] = {"UK3CB_BAF_B_Carryall_DDPM"};
  vest[] = {LITE_VEST};
  headgear[] = {CREW_HEADGEAR};
  magazines[] = {CARBINE_MAG,CREW_GRENADES};
  backpackItems[] = {KEY_WEST,RADIO_LR};
  linkedItems[] = {BASE_LINKED,LEADER_LINKED,BINOS,NODS3};
  items[] += {BASE_MEDICAL};
};
class soldier_repair_F: crew_F {// Repair Specialist
  backpack[] = {BAG_HEAVY};
  backpackItems[] += {"Toolkit",RADIO_MR,KEY_WEST};
  linkedItems[] = {BASE_LINKED,LEADER_LINKED};
};
class Fic_eng: Fic_Soldier_Carbine {
  items[] += {BASE_ENG};
  vest[] = {ENG_VEST};
  handguns[] = {MINE_SWEEPER};
  backpackItems[] = {};
};
class soldier_exp_F: Fic_eng {// Explosive Specialist
  magazines[] += {BASE_EXP};
  backpackItems[] = {"Toolkit"};
};
class engineer_F: Fic_eng {// Mine Specialist
  magazines[] += {BASE_MINE};
};
class Soldier_PG_F: Fic_Soldier_Carbine { // Heavy Grenadier
  vest[] = {AR_VEST};
  headgear[] = {"rhs_Booniehat_ucp"};
  backpack[] = {BAG_HEAVY};
  backpackItems[] += {CARBINE,"RH_compM2"};
  weapons[] = {HGREN};
  magazines[] = {HGREN_MAG,CARBINE_MAG};
  linkedItems[] = {BASE_LINKED};
};
class Soldier_lite_F: Fic_Soldier_Carbine { // Breacher
  backpack[] = {BAG_MEDIUM};
  headgear[] = {"rhs_Booniehat_ucp"};
  backpackItems[] += {SG};
  magazines[] += {SG_MAG,STUN_GRENADES};
};
class Soldier_unarmed_F: Soldier_AR_F { // IAR
  weapons[] = {IAR};
  vest[] = {IAR_VEST};
  attachments[] = {"rhsusf_acc_harris_bipod"};
  magazines[] = {IAR_MAG};
  opticChoices[] = {ALT_OPTICS};
};
class fallback: Soldier_F {}; // This means any faction member who doesn't match something will use this loadout
