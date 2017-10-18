// Author: Morbo
// Description: paste your loadout config from the arseanal exporter
#include "undef.hpp" // Reset defines

// ------------------- PASTE BELOW THIS LINE

// Camo set
#define CAMO_UNIFORM "rhs_uniform_vdv_flora"
#define CAMO_VEST "rhs_6b13_Flora_6sh92"
#define CAMO_BACKPACK "rhs_sidor"
#define CAMO_HEADGEAR "rhs_6b26","rhs_6b26_bala","rhs_6b26_ess","rhs_6b26_ess_bala"
// Rifle
#define RIFLE "rhs_weap_ak74m","rhs_weap_ak74m_2mag","rhs_weap_ak74m_plummag","rhs_weap_ak74m_fullplum"
#define RIFLE_MAG "rhs_30Rnd_545x39_AK:10"
#define RIFLE_ATTACHMENTS "rhs_acc_dtk1983", "rhs_acc_1p63"
#define AAR_ATTACHMENTS RIFLE_ATTACHMENTS
#define ALT_OPTICS "rhs_acc_1p63","rhs_acc_ekp1","rhs_acc_ekp8_02","rhs_acc_pkas"
// GL Rifle
#define GLRIFLE "rhs_weap_ak74m_gp25","rhs_weap_ak74m_fullplum_gp25"
#define GLRIFLE_MAG "rhs_30Rnd_545x39_AK:10"
#define GLRIFLE_MAG_SMOKE "rhs_GRD40_White:2","rhs_GRD40_Red:2"
#define GLRIFLE_MAG_HE "rhs_VOG25:5"
#define GLRIFLE_MAG_FLARE "rhs_VG40OP_red:4"
// Carbine
#define CARBINE "rhs_weap_ak105"
#define CARBINE_MAG "rhs_30Rnd_545x39_AK:10"
// AR
#define AR "hlc_rifle_rpk74n_45rnd"
#define AR_MAG "hlc_45Rnd_545x39_m_rpk:9"
// AT
#define AT "rhs_weap_rpg26"
#define AT_MAG "rhs_rpg26_mag:1"
// MMG
#define MMG "rhs_weap_pkp"
#define MMG_MAG "rhs_100Rnd_762x54mmR:5"
// MAT
#define MAT "rhs_weap_rpg7"
#define MAT_MAG "rhs_rpg7_PG7VR_mag:1", "rhs_rpg7_PG7VL_mag:1"
#define MAT_MAG2 "rhs_rpg7_PG7VR_mag:1", "rhs_rpg7_PG7VL_mag:1"
#define MAT_OPTIC "rhs_acc_pgo7v3"

// -------------------- PASTE ABOVE THIS LINE

// SAM
#define SAM "rhs_weap_igla"
#define SAM_MAG "rhs_mag_9k38_rocket:3"
// Sniper Rifle
#define SNIPER "rhs_weap_t5000"
#define SNIPER_MAG "rhs_5Rnd_338lapua_t5000:5"
// Spotter Rifle
#define SPOTTER "rhs_weap_svdp"
#define SPOTTER_MAG "rhs_10Rnd_762x54mmR_7N1:6"
// SMG
#define SMG "rhs_weap_aks74un"
#define SMG_MAG "rhs_30Rnd_545x39_AK:6"
#define SMG2 "rhs_weap_pp2000"
#define SMG2_MAG "rhs_mag_9x19mm_7n21_20:6"
// Pistol
#define PISTOL "hgun_Pistol_01_F"
#define PISTOL_MAG "10Rnd_9x21_Mag:4"
#define FLAREPISTOL "BWA3_P2A1"
#define FLAREPISTOL_MAG "BWA3_1Rnd_Flare_Singlestar_Green:3","BWA3_1Rnd_Flare_Singlestar_Red:3"
// Grenades
#define BASE_FRAG "rhs_mag_rgd5:2"
#define BASE_GRENADES BASE_FRAG,"rhs_mag_rdg2_black:2"
#define LEADER_GRENADES BASE_FRAG,"rhs_mag_nspd:2","rhs_mag_rdg2_black:2","Chemlight_blue:2"
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
  attachments[] = {RIFLE_ATTACHMENTS,GRIP};
  opticChoices[] = {ALT_OPTICS};
};
class Fic_Soldier_Carbine: Soldier_F {// carbine-man
  weapons[] = {CARBINE};
  magazines[] = {CARBINE_MAG,BASE_GRENADES};
};
class Soldier_TL_F: Soldier_F {// FTL
  vest[] = {"rhs_6b13_Flora_6sh92_vog"};
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,LEADER_GRENADES};
  items[] += {LEADER_TOOLS,RADIO_MR};
  linkedItems[] += {BINOS};
};
class Soldier_SL_F: Soldier_TL_F {// SL
  handguns[] = {PISTOL};
  magazines[] += {PISTOL_MAG};
  linkedItems[] = {BASE_LINKED,BINOS};
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
  weapons[] = {AR};
  backpack[] = {"rhs_assault_umbts"};
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
class medic_F: Fic_Soldier_Carbine {// Medic
  magazines[] = {CARBINE_MAG,MEDIC_GRENADES};
  backpack[] = {"rhs_medic_bag"};
  backpackItems[] = {MEDIC_MEDICAL};
  items[] += {RADIO_MR};
};
class Fic_Spotter: Soldier_F {
  backpack[] = {"rhs_assault_umbts"};
  linkedItems[] += {RANGE_FINDER};
};
class support_MG_F: Soldier_AR_F {// MMG
  weapons[] = {MMG};
  magazines[] = {MMG_MAG,PISTOL_MAG,BASE_GRENADES};
  attachments[] = {};
};
class Soldier_A_F: Fic_Spotter {// MMG Spotter/Ammo Bearer
  backpack[] = {"rhs_assault_umbts"};
  backpackItems[] += {MMG_MAG};
};
class soldier_AT_F: Fic_Soldier_Carbine {// MAT Gunner
  backpack[] = {"rhs_rpg_empty"};
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
  SAM_GEAR("rhs_rpg_empty", SAM_MAG)
  launchers[] = {SAM};
};
class Soldier_AAA_F: Fic_Spotter {// SAM Spotter/Ammo Bearer
  SAM_GEAR("rhs_rpg_empty", SAM_MAG)
};
class support_Mort_F: Fic_Soldier_Carbine {// Mortar Gunner
  MORTAR_GEAR("B_Mortar_01_weapon_F")
};
class support_AMort_F: Fic_Spotter {// Assistant Mortar
  MORTAR_GEAR("B_Mortar_01_support_F")
};
class spotter_F: Fic_Spotter {// Spotter
  weapons[] = {SPOTTER};
  vest[] = {"rhs_6b23_digi_sniper"};
  headgear[] = {"rhs_Booniehat_flora"};
  magazines[] = {SPOTTER_MAG,BASE_GRENADES};
  items[] += {RADIO_MR,"ACE_ATragMX","ACE_Kestrel4500","ACE_RangeCard"};
  attachments[] = {"rhs_acc_pso1m21"};
  linkedItems[] += {LEADER_LINKED};
};
class sniper_F: spotter_F {// Sniper
  weapons[] = {SNIPER};
  magazines[] = {SNIPER_MAG,BASE_GRENADES};
  items[] = {BASE_TOOLS,"ACE_RangeCard"};
  linkedItems[] = {BASE_LINKED};
  attachments[] = {"rhs_acc_dh520x56","rhs_acc_harris_swivel"};
};
class Helipilot_F {// Pilot
  uniform[] = {CAMO_UNIFORM};
  backpack[] = {"rhs_sidor"};
  vest[] = {CAMO_VEST};
  headgear[] = {"rhs_zsh7a_mike_green"};
  weapons[] = {SMG2};
  handguns[] = {FLAREPISTOL};
  magazines[] = {SMG2_MAG,FLAREPISTOL_MAG,CREW_GRENADES};
  backpackItems[] = {KEY_WEST,RADIO_LR};
  items[] = {BASE_MEDICAL,BASE_TOOLS,LEADER_TOOLS,RADIO_MR};
  linkedItems[] = {BASE_LINKED,LEADER_LINKED};
};
class helicrew_F: Helipilot_F {}; // Pilot
class crew_F: Fic_Soldier_Carbine {// Crew
  // backpack[] = {"UK3CB_BAF_B_Carryall_DDPM"};
  weapons[] = {SMG};
  magazines[] = {SMG_MAG,CREW_GRENADES};
  headgear[] = {"rhs_tsh4"};
  vest[] = {"rhs_6b13_Flora"};
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
class soldier_M_F: spotter_F { // Marksman
  weapons[] = {SPOTTER};
  headgear[] = {CAMO_HEADGEAR};
  handguns[] = {PISTOL};
  magazines[] = {SPOTTER_MAG,BASE_GRENADES,PISTOL_MAG};
};
class fallback: Soldier_F {}; // This means any faction member who doesn't match something will use this loadout