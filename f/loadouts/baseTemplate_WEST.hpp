// Author: You
// Description: paste your loadout config from the arseanal exporter
#include "undef.hpp" // Reset defines

// This blanktemplate has been pre-configured with western equipment.
// For more in-depth gearscript explanation, go here: http://www.coalitiongroup.net/forums/viewtopic.php?f=20&t=593

// ------------------- PASTE BELOW THIS LINE





// -------------------- PASTE ABOVE THIS LINE

// ATTENTION: Triple-check what you've pasted in above. 
// Ensure
// 1: There are no empty defines (If there are, remove all references to them, then the define its self)
// 2: Your MAT has the correct and appropriate amount of ammo (3-4 rockets depending)
// 3: That magazine counts are as desired (Especially if you're using weapons with mag-capacities less than 30)
// 4: That "GLRIFLE_MAG" includes tracer mags where appropriate - GLRIFLE goes to FTL (And grenadier).
// I'm watching you.

// Below is pre-defined equipment. If you want your loadout to use pistols, SMGs etc that make sense,
// make sure to edit these to your preference. Use Arsenal's normal "export" function to pull the classnames
// of the weapons and items you want here.

// SAM
#define SAM "rhs_weap_fim92"
#define SAM_MAG "rhs_fim92_mag:3"
#define SAM_MAG2 "rhs_fim92_mag:2"
// Sniper Rifle
#define SNIPER "rhs_weap_m24sws_blk"
#define SNIPER_MAG "rhsusf_5Rnd_762x51_m118_special_Mag:5"
#define SNIPER_ATT "rhsusf_acc_premier_low","rhsusf_acc_harris_swivel"
// Spotter Rifle
#define SPOTTER "rhs_weap_sr25"
#define SPOTTER_MAG "rhsusf_20Rnd_762x51_m118_special_Mag:2","rhsusf_20Rnd_762x51_m62_Mag:2"
#define SPOTTER_ATT "RH_ta01nsn","rhsusf_acc_harris_bipod"
// Marksman Rifle
#define DMRIFLE "hlc_rifle_M14dmr_Rail"
#define DMRIFLE_MAG "hlc_20Rnd_762x51_barrier_M14:8"
#define DMRIFLE_OPTICS "RH_ta01nsn"
#define DMRIFLE_ALT_OPTICS "RH_ta01nsn","RH_ta31rmr"
// SMG
#define SMG "hlc_smg_mp5a3"
#define SMG_MAG "hlc_30Rnd_9x19_B_MP5:6"
// Shotgun
#define SG "rhs_weap_M590_5RD"
#define SG_MAG "rhsusf_5Rnd_00Buck:6"
// Pistol
#define PISTOL "rhsusf_weap_glock17g4"
#define PISTOL_MAG "rhsusf_mag_17Rnd_9x19_JHP:3"
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
// The below two classes (Marksman and Breacher) aren't part of the platoon by default in CMF. If you want 
// to include them, change units within fireteams (Eg. each FT2's 2nd AR is turned into Marksman).
class Soldier_M_F: Soldier_F { // Marksman
  weapons[] = {DMRIFLE};
  magazines[] = {DMRIFLE_MAG,BASE_GRENADES};
  attachments[] = {DMRIFLE_OPTICS};
  opticChoices[] = {DMRIFLE_ALT_OPTICS};
};
class soldier_lite_F: Fic_Soldier_Carbine { // Breacher
  backpackItems[] += {SG};
  magazines[] += {SG_MAG,STUN_GRENADES};
};
class Soldier_GL_F: Soldier_F { // Grenadier
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,BASE_GRENADES};
};
class Soldier_TL_F: Soldier_F {// FTL
  weapons[] = {GLRIFLE};
  magazines[] = {GLRIFLE_MAG,GLRIFLE_MAG_HE,GLRIFLE_MAG_SMOKE,LEADER_GRENADES};
  items[] += {LEADER_TOOLS,RADIO_MR};
  linkedItems[] += {BINOS,NODS2};
};
class Soldier_SL_F: Soldier_TL_F {// SL
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
class medic_F: Fic_Soldier_Carbine {// Medic
  magazines[] = {CARBINE_MAG,MEDIC_GRENADES};
  backpack[] = {"rhs_medic_bag"};
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
  attachments[] = {SPOTTER_ATT};
  items[] += {RADIO_MR,"ACE_ATragMX","ACE_Kestrel4500","ACE_RangeCard"};
  linkedItems[] += {LEADER_LINKED};
};
class sniper_F: spotter_F {// Sniper
  weapons[] = {SNIPER};
  magazines[] = {SNIPER_MAG,BASE_GRENADES};
  items[] = {BASE_TOOLS,"ACE_RangeCard"};
  linkedItems[] = {BASE_LINKED};
  attachments[] = {SNIPER_ATT};
};
class Helipilot_F {// Pilot
  // uniform[] = {"UK3CB_BAF_U_HeliPilotCoveralls_RAF"};
  // backpack[] = {"B_AssaultPack_blk"};
  vest[] = {CAMO_VEST};
  uniform[] = {CAMO_UNIFORM};
  headgear[] = {"rhsusf_hgu56p"};
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
  headgear[] = {"rhsusf_cvc_green_helmet"};
  magazines[] = {CARBINE_MAG,CREW_GRENADES};
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
class fallback: Soldier_F {}; // This means any faction member who doesn't match something will use this loadout
