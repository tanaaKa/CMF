// ====================================================================================

// F3 - Common Local Variables
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// WARNING: DO NOT DISABLE THIS COMPONENT
if(isServer) then {
	f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";
};

// ====================================================================================
// Adds all AI and placed objects to zeus on mission load

_scripts_ZeusAddObjects = compileFinal preprocessFileLineNumbers "scripts\Zeus_AddEditorObjects.sqf";

if (isServer) then {execVM "scripts\Zeus_AddEditorObjects.sqf";};	//Adds all objects in-mission to Zeus (Disable by placing "//" in front of)

if (isServer) then { { _y = _x; { if (side _x != sideLogic) then { _y addCuratorEditableObjects [[_x],true]; }; } forEach allMissionObjects ""; } forEach allCurators; };

// ====================================================================================

// F3 - Radio Systems Support
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\radios\radio_init.sqf";

// ====================================================================================

// F3 - JIP setup
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_var_JIP_FirstMenu = false;		// Do players connecting for the first time get the JIP menu? - This only works in missions with respawn.
f_var_JIP_RemoveCorpse = false;		// Remove the old corpse of respawning players?
f_var_JIP_GearMenu = true;			// Can JIP/respawned players select their own gear? False will use gear assigned by F3 Gear Component if possible

// ====================================================================================

// F3 - Disable Saving and Auto Saving
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

enableSaving [false, false];

// ====================================================================================

// F3 - Mute Orders and Reports
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

{_x setSpeaker "NoVoice"} forEach allUnits;

// ====================================================================================

// F3 - Folk ARPS Group IDs
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setGroupIDs = [] execVM "f\setGroupID\f_setGroupIDs.sqf";

// ====================================================================================

// F3 - F3 Folk ARPS Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_setGroupMarkers = [] execVM "f\groupMarkers\f_setLocalGroupMarkers.sqf";

// ====================================================================================

// F3 - Fireteam Member Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] spawn f_fnc_SetLocalFTMemberMarkers;

// ====================================================================================

// F3 - Join Group Action
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[false] execVM "f\groupJoin\f_groupJoinAction.sqf";

// ====================================================================================

// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";

// ====================================================================================

// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\briefing\f_orbatNotes.sqf";

// ====================================================================================

// F3 - Loadout Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "f\briefing\f_loadoutNotes.sqf";

// ====================================================================================

// Misc settings
setViewDistance 2000;

// ====================================================================================

// F3 - Automatic Body Removal
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// f_var_removeBodyDelay = 180;
// f_var_removeBodyDistance = 500;
// f_var_doNotRemoveBodies = [];
// [] execVM "f\removeBody\f_addRemoveBodyEH.sqf";

// ====================================================================================

// F3 - Assign Gear AI
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

// [] execVM "f\assignGear\f_assignGear_AI.sqf";

// ====================================================================================

// F3 - MapClick Teleport
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_var_mapClickTeleport_Uses = 1;					// How often the teleport action can be used. 0 = infinite usage.
f_var_mapClickTeleport_TimeLimit = 900; 			// If higher than 0 the action will be removed after the given time.
f_var_mapClickTeleport_GroupTeleport = true; 	// False: everyone can teleport. True: Only group leaders can teleport and will move their entire group.
// f_var_mapClickTeleport_Units = [];				// Restrict map click teleport to these units
f_var_mapClickTeleport_Height = 0;				// If > 0 map click teleport will act as a HALO drop and automatically assign parachutes to units
[] execVM "f\mapClickTeleport\f_mapClickTeleportAction.sqf";

// ====================================================================================

// tanaKa's Paradrop action to all aircraft

_scripts_paraeject = compileFinal preprocessFileLineNumbers "scripts\simplepara\fn_paraeject.sqf";

{
	if (_x isKindOf "Air") then {
		_x addaction [("<t color=""#DF0101"">" + ("PARADROP") + "</t>"), "scripts\simplepara\fn_paraeject.sqf", "", 10, false, true, "", "(getPosATL _target select 2) > 100"]; 
	};
} foreach vehicles;

// ====================================================================================

// tanaKa's Safestart and server load script

cutText ["Initializing. Do not move.", "BLACK IN", 30]; 										

if ((!isNil "PABST_fnc_safeStart") && (isMultiplayer)) then {[] spawn PABST_fnc_safeStart;}; 

sleep 30; 
cutText ["Server Initialized. Free to move.", "PLAIN"];

sleep 5;

[ [ ["Mission Name"], ["by Author"] ] , 1, 0.7, "<t align = 'center' shadow = '1' size = '1.0'>%1</t>" ] spawn BIS_fnc_typeText; // CHANGE THIS PER MISSION!


