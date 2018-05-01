// Author: Morbo
// Description: paste your loadout config from the arseanal exporter
#include "undef.hpp" // Reset defines

// ------------------- PASTE BELOW THIS LINE


// Camo set
#define CAMO_UNIFORM "BWA3_Uniform_Fleck","BWA3_Uniform2_Fleck"
#define CAMO_VEST "BWA3_Vest_Rifleman1_Fleck"
#define CAMO_BACKPACK "BWA3_AssaultPack_Fleck"
#define CAMO_HEADGEAR "BWA3_M92_Fleck"
// Rifle
#define RIFLE "BWA3_G36"
#define RIFLE_MAG "BWA3_30Rnd_556x45_G36_AP:10"
#define RIFLE_ATTACHMENTS "rhsusf_acc_eotech_552","RH_peq15b"
#define AAR_ATTACHMENTS RIFLE_ATTACHMENTS
#define ALT_OPTICS "rhsusf_acc_eotech_552","BWA3_optic_RSAS","BWA3_optic_EOTech","rhsusf_acc_compm4","rhsusf_acc_T1_low"
// GL Rifle
#define GLRIFLE "BWA3_G36_AG"
#define GLRIFLE_MAG "BWA3_30Rnd_556x45_G36_AP:8","BWA3_30Rnd_556x45_G36_Tracer:2"
#define GLRIFLE_MAG_SMOKE "1Rnd_Smoke_Grenade_shell:2","1Rnd_SmokeRed_Grenade_shell:2"
#define GLRIFLE_MAG_HE "1Rnd_HE_Grenade_shell:5"
#define GLRIFLE_MAG_HE2 "1Rnd_HE_Grenade_shell:10"
#define GLRIFLE_MAG_FLARE "UGL_FlareYellow_F:4"
// Carbine
#define CARBINE "BWA3_G36K"
#define CARBINE_MAG "BWA3_30Rnd_556x45_G36_AP:10"
// AR
#define AR "BWA3_G36_LMG"
#define AR_MAG "BWA3_100Rnd_556x45_G36:5"
// AT
#define AT "BWA3_Pzf3"
#define AT_MAG "BWA3_Pzf3_IT:1"
// MMG
#define MMG "hlc_lmg_MG3KWS_b"
#define MMG_MAG "hlc_100Rnd_762x51_Barrier_MG3:5"
// MAT
#define MAT "BWA3_CarlGustaf"
#define MAT_MAG "BWA3_CarlGustaf_HEAT:2", "BWA3_CarlGustaf_HEDP:2"
#define MAT_MAG2 "BWA3_CarlGustaf_HEAT:2", "BWA3_CarlGustaf_HEDP:2"
#define MAT_OPTIC "BWA3_optic_CarlGustaf"


// -------------------- PASTE ABOVE THIS LINE

// SAM
#define SAM "rhs_weap_fim92"
#define SAM_MAG "rhs_fim92_mag:1"
#define SAM_MAG2 "rhs_fim92_mag:2"
// Sniper Rifle
#define SNIPER "rhs_weap_M107"
#define SNIPER_MAG "rhsusf_mag_10Rnd_STD_50BMG_M33:5"
// Spotter Rifle
#define SPOTTER "BWA3_G27"
#define SPOTTER_MAG "BWA3_20Rnd_762x51_G28:8"
// SMG
#define SMG "rhsusf_weap_MP7A2_grip3"
#define SMG_MAG "rhsusf_mag_40Rnd_46x30_FMJ:5"
#define SMG_ATT "rhs_acc_grip_ffg2","rhsusf_acc_T1_low"
// Shotgun
#define SG "rhs_weap_M590_5RD"
#define SG_MAG "rhsusf_5Rnd_00Buck:4","rhsusf_5Rnd_Slug:2"
// Pistol
#define PISTOL "BWA3_P8"
#define PISTOL_MAG "BWA3_15Rnd_9x19_P8:3"
#define FLAREPISTOL "BWA3_P2A1"
#define FLAREPISTOL_MAG "BWA3_1Rnd_Flare_Singlestar_Green:3","BWA3_1Rnd_Flare_Singlestar_Red:3"
// Grenades
#define BASE_FRAG "BWA3_DM51A1:2"
#define BASE_GRENADES "BWA3_DM25:2",BASE_FRAG
#define LEADER_GRENADES "BWA3_DM32_Orange:2","BWA3_DM32_Yellow:2",BASE_FRAG,"Chemlight_blue:2"
// Gear
#define BASE_TOOLS COMMON_TOOLS
#define LEADER_TOOLS COMMON_LEADER_TOOLS,KEY_WEST
#define BASE_LINKED COMMON_LINKED,NODS
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
class supplyCrate_F {
  TransportWeapons[] = {AT};
  TransportMagazines[] = {RIFLE_MAG,RIFLE_MAG,CARBINE_MAG,AR_MAG,AR_MAG,GLRIFLE_MAG_HE};
  TransportItems[] = {BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL,BASE_MEDICAL};
};

class Soldier_F {// rifleman
  uniform[] = {CAMO_UNIFORM};
  vest[] = {CAMO_VEST};
  headgear[] = {CAMO_HEADGEAR};
  backpack[] = {CAMO_BACKPACK};
  backpackItems[] = {BASE_MEDICAL};
  weapons[] = {RIFLE};
  magazines[] = {RIFLE_MAG,BASE_GRENADES};
  items[] = {BASE_TOOLS};
  linkedItems[] = {BASE_LINKED,NODS};
  attachments[] = {RIFLE_ATTACHMENTS};
  opticChoices[] = {ALT_OPTICS};
};
class Survivor_F: Soldier_F { // FT CLS
   backpackItems[] = {CLS_MEDICAL};
};
class Fic_Soldier_Carbine: Soldier_F {// carbine-man
  weapons[] = {CARBINE};
  magazines[] = {CARBINE_MAG,BASE_GRENADES};
};
class Soldier_GL_F: Soldier_F { // Grenadier
  vest[] = {"BWA3_Vest_Grenadier_Fleck"};
  weapons[] = {"BWA3_G38_AG"};
  magazines[] = {RIFLE_MAG,GLRIFLE_MAG_HE2,BASE_GRENADES};
};
class Soldier_TL_F: Soldier_F {// FTL
  vest[] = {"BWA3_Vest_Grenadier_Fleck"};
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,LEADER_GRENADES};
  items[] += {LEADER_TOOLS,RADIO_MR};
  linkedItems[] += {BINOS,NODS2};
};
class Soldier_SL_F: Soldier_TL_F {// SL
  vest[] = {"BWA3_Vest_Leader_Fleck"};
  handguns[] = {PISTOL};
  magazines[] += {PISTOL_MAG};
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
  items[] += {RADIO_MR};
};
class Soldier_AR_F: Soldier_F {// AR
  vest[] = {"BWA3_Vest_Autorifleman_Fleck"};
  backpack[] = {"BWA3_Kitbag_Fleck"};
  weapons[] = {AR};
  magazines[] = {AR_MAG,PISTOL_MAG,BASE_GRENADES};
  handguns[] = {PISTOL};
};
class Soldier_AAR_F: Soldier_F {// AAR
  backpack[] = {"BWA3_Kitbag_Fleck"};
  backpackItems[] += {AR_MAG};
  attachments[] = {AAR_ATTACHMENTS};
  linkedItems[] += {BINOS};
};
class Soldier_LAT_F: Fic_Soldier_Carbine {// RAT
  magazines[] += {AT_MAG};
  launchers[] = {AT};
};
class medic_F: Fic_Soldier_Carbine {// Medic
  vest[] = {"BWA3_Vest_Medic_Fleck"};
  magazines[] = {CARBINE_MAG,MEDIC_GRENADES};
  backpack[] = {"BWA3_Kitbag_Fleck_Medic"};
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
  backpack[] = {"BWA3_Kitbag_Fleck"};
  backpackItems[] += {MMG_MAG};
};
class soldier_AT_F: Fic_Soldier_Carbine {// MAT Gunner
  backpack[] = {"BWA3_Kitbag_Fleck"};
  backpackItems[] = {};
  magazines[] += {MAT_MAG};
  items[] += {BASE_MEDICAL};
  launchers[] = {MAT};
  secondaryAttachments[] = {MAT_OPTIC};
};
class Soldier_AAT_F: Fic_Spotter {// MAT Spotter/Ammo Bearer
  backpack[] = {"BWA3_Kitbag_Fleck"};
  backpackItems[] = {};
  magazines[] += {MAT_MAG};
  items[] += {BASE_MEDICAL};
};
class soldier_AA_F: Fic_Soldier_Carbine {// SAM Gunner
  SAM_GEAR("BWA3_Kitbag_Fleck", SAM_MAG)
  launchers[] = {SAM};
};
class Soldier_AAA_F: Fic_Spotter {// SAM Spotter/Ammo Bearer
  SAM_GEAR("BWA3_Kitbag_Fleck", SAM_MAG2)
};
class support_Mort_F: Fic_Soldier_Carbine {// Mortar Gunner
  MORTAR_GEAR("B_Mortar_01_weapon_F")
};
class support_AMort_F: Fic_Spotter {// Assistant Mortar
  MORTAR_GEAR("B_Mortar_01_support_F")
};
class spotter_F: Fic_Spotter {// Spotter
  weapons[] = {SPOTTER};
  uniform[] = {"BWA3_Uniform_Ghillie_idz_Fleck"};
  magazines[] = {SPOTTER_MAG,BASE_GRENADES};
  items[] += {RADIO_MR,"ACE_ATragMX","ACE_Kestrel4500","ACE_RangeCard"};
  linkedItems[] += {LEADER_LINKED};
};
class sniper_F: spotter_F {// Sniper
  weapons[] = {SNIPER};
  uniform[] = {"BWA3_Uniform_Ghillie_idz_Fleck"};
  magazines[] = {SNIPER_MAG,BASE_GRENADES};
  items[] = {BASE_TOOLS,"ACE_RangeCard"};
  linkedItems[] = {BASE_LINKED};
  attachments[] = {"rhsusf_acc_premier"};
};
class Helipilot_F {// Pilot
  uniform[] = {"BWA3_Uniform_Helipilot"};
  backpack[] = {"B_AssaultPack_rgr"};
  vest[] = {"V_TacVest_oli"};
  headgear[] = {"BWA3_Knighthelm"};
  weapons[] = {SMG};
  handguns[] = {FLAREPISTOL};
  magazines[] = {SMG_MAG,FLAREPISTOL_MAG,CREW_GRENADES};
  attachments[] = {SMG_ATT};
  backpackItems[] = {KEY_WEST,RADIO_LR};
  items[] = {BASE_MEDICAL,BASE_TOOLS,LEADER_TOOLS,RADIO_MR};
  linkedItems[] = {BASE_LINKED,LEADER_LINKED,NODS3};
};
class helicrew_F: Helipilot_F {}; // Pilot
class crew_F: Fic_Soldier_Carbine {// Crew
  uniform[] = {"BWA3_Uniform_Crew_Fleck"};
  vest[] = {"BWA3_Vest_Fleck"};
  backpack[] = {"BWA3_Kitbag_Fleck"};
  headgear[] = {"BWA3_CrewmanKSK_Fleck_Headset"};
  weapons[] = {SMG};
  magazines[] = {SMG_MAG,CREW_GRENADES};
  attachments[] = {SMG_ATT};
  backpackItems[] = {KEY_WEST,RADIO_LR};
  linkedItems[] = {BASE_LINKED,LEADER_LINKED,BINOS,NODS3};
  items[] += {BASE_MEDICAL};
};
class soldier_repair_F: crew_F {// Repair Specialist
  // backpack[] = {"UK3CB_BAF_B_Carryall_DDPM"};
  backpackItems[] = {"Toolkit",RADIO_MR,KEY_WEST};
  linkedItems[] = {BASE_LINKED,LEADER_LINKED};
};
class Fic_eng: Fic_Soldier_Carbine {
  items[] += {BASE_ENG};
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
class soldier_M_F: spotter_F { // Marksman
  weapons[] = {SPOTTER};
  uniform[] = {CAMO_UNIFORM};
  headgear[] = {CAMO_HEADGEAR};
  attachments[] = {"BWA3_optic_ZO4x30"};
  handguns[] = {PISTOL};
  magazines[] = {SPOTTER_MAG,BASE_GRENADES,PISTOL_MAG};
};
class Soldier_lite_F: Fic_Soldier_Carbine { // Breacher
  weapons[] = {"BWA3_G38C"};
  backpack[] = {"BWA3_Kitbag_Fleck"};
  backpackItems[] = {SG};
  magazines[] += {SG_MAG,STUN_GRENADES};
};
class fallback: Soldier_F {}; // This means any faction member who doesn't match something will use this loadout