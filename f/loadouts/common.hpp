// common defines

// RADIOS
#define RADIO_SR "ACRE_PRC343"
#define RADIO_MR "ACRE_PRC148"
#define RADIO_LR "ACRE_PRC117F"

// KEYS
#define KEY_WEST "ACE_key_west"
#define KEY_EAST "ACE_key_east"
#define KEY_IND "ACE_key_indp"

// GEAR
#define BASE_MEDICAL "ACE_elasticBandage:1","ACE_tourniquet:1","ACE_packingBandage:2"
#define MEDIC_MEDICAL "ACE_packingBandage:20","ACE_elasticBandage:15","ACE_quikclot:5","ACE_epinephrine:8","ACE_salineIV_500:4","ACE_morphine:12","ACE_tourniquet:2"
#define CLS_MEDICAL "ACE_packingBandage:5","ACE_elasticBandage:5","ACE_tourniquet:2"
#define COMMON_TOOLS RADIO_SR,"ACE_MapTools","ACE_IR_Strobe_item","ACE_Flashlight_XL50","ACE_EntrenchingTool","ACE_CableTie:4"
#define COMMON_LEADER_TOOLS "ACE_microDAGR","ACE_Flashlight_XL50","ACE_personalAidKit","ACE_Fortify"
#define COMMON_LINKED "ItemMap","ItemCompass","ItemWatch"
#define NODS "rhsusf_ANPVS_14"
#define NODS2 "rhsusf_ANPVS_15"
#define NODS3 "ACE_NVG_Gen4"
#define NODSRU "rhs_1PN138"
#define MINE_SWEEPER "ACE_VMM3"
//#define COMMON_LEADER_LINKED "ItemGPS"
#define BASE_SMOKES "SmokeShell:2"
#define LEADER_SMOKES "SmokeShell:2","SmokeShellGreen:2"
#define MEDIC_GRENADES "SmokeShell:6","SmokeShellGreen:2"
#define CREW_GRENADES "SmokeShell:2"
#define STUN_GRENADES "ACE_M84:2"
#define BASE_ENG "ACE_DefusalKit","ACE_Clacker","ACE_wirecutter"
#define BASE_EXP "DemoCharge_Remote_Mag:3","SatchelCharge_Remote_Mag:2"
#define BASE_MINE "ATMine_Range_Mag:2","APERSBoundingMine_Range_Mag:2","APERSMine_Range_Mag:2"
#define BINOS "Binocular"
#define RANGE_FINDER "ACE_Vector"

// FUNCTIONS
#define SAM_GEAR(BACKPACK,MAG) backpack[] = {BACKPACK}; backpackItems[] = {}; magazines[] += {MAG}; items[] += {BASE_MEDICAL};
#define MORTAR_GEAR(BACKPACK) backpack[] = {BACKPACK}; items[] += {"ACE_RangeTable_82mm"};
