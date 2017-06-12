// ====================================================================================
// Common Local Variables
if(isServer) then {
	f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";
};

// ====================================================================================
// Radio assigning/setup
[] execVM "f\radios\radio_init.sqf";

// ====================================================================================
// JIP Fnc
f_var_JIP_FirstMenu = false;		// Do players connecting for the first time get the JIP menu? - This only works in missions with respawn.
f_var_JIP_RemoveCorpse = false;		// Remove the old corpse of respawning players?
f_var_JIP_GearMenu = true;			// Can JIP/respawned players select their own gear? False will use gear assigned by F3 Gear Component if possible

// ====================================================================================
// Group IDs
f_script_setGroupIDs = [] execVM "f\setGroupID\f_setGroupIDs.sqf";

// ====================================================================================
// Group Map Markers
f_script_setGroupMarkers = [] execVM "f\groupMarkers\f_setLocalGroupMarkers.sqf";

// ====================================================================================
// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
f_script_briefing = [] execVM "briefing.sqf";

// ====================================================================================
// Briefing ORBAT
[] execVM "f\briefing\f_orbatNotes.sqf";

// ====================================================================================
// Briefing Loadout
[] execVM "f\briefing\f_loadoutNotes.sqf";

// ====================================================================================
// Forward Deploy Options
f_var_mapClickTeleport_Uses = 1;					// How often the teleport action can be used. 0 = infinite usage.
f_var_mapClickTeleport_TimeLimit = 0; 			// If higher than 0 the action will be removed after the given time.
f_var_mapClickTeleport_GroupTeleport = true; 	// False: everyone can teleport. True: Only group leaders can teleport and will move their entire group.
// f_var_mapClickTeleport_Units = [];				// Restrict map click teleport to these units
f_var_mapClickTeleport_Height = 0;				// If > 0 map click teleport will act as a HALO drop and automatically assign parachutes to units
[] execVM "f\mapClickTeleport\f_mapClickTeleportAction.sqf";

// ====================================================================================
// AI Assign gear (enable if setup properly!)
// [] execVM "f\assignGear\f_assignGear_AI.sqf";

// ====================================================================================
// Misc settings
enableSaving [false, false];
setViewDistance 2000;
player addRating 90000;
{_x setSpeaker "NoVoice"} forEach playableUnits;

// ====================================================================================
//tanaKa's crew-served weapon recoil fix
[] execVM "scripts\csw_recoil.sqf";

// ====================================================================================
// tanaKa's Paradrop action to all aircraft
[] execVM "scripts\paradrop.sqf";

// ====================================================================================
// tanaKa's Safestart and server load script
[] execVM "scripts\serverstart.sqf";

// ====================================================================================	
// tanaKa's crew info display
[] execVM "scripts\crewinfo\crew.sqf";

// ====================================================================================	
//Plank Settings
call compile preprocessFileLineNumbers "plank\plank_init.sqf";

// ====================================================================================	
//Tao Settings
tao_foldmap_changePermitted = false;
tao_foldmap_alternateDrawPaper = true;

// ====================================================================================	
// tanaKa's inventory clear script (on death)
[] execVM "scripts\removegear.sqf";