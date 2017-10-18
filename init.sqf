// ====================================================================================
// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
f_script_briefing = [] execVM "briefing.sqf";

// ====================================================================================
// Briefing Loadout
[] execVM "f\briefing\f_loadoutNotes.sqf";

// ====================================================================================
// Forward Deploy Options
f_var_mapClickTeleport_Uses = 1;					// How often the teleport action can be used. 0 = infinite usage.
f_var_mapClickTeleport_TimeLimit = 0; 			// If higher than 0 the action will be removed after the given time.
f_var_mapClickTeleport_GroupTeleport = true; 	// False: everyone can teleport. True: Only group leaders can teleport and will move their entire group.
//f_var_mapClickTeleport_Units = [];				// Restrict map click teleport to these units
f_var_mapClickTeleport_Height = 0;				// If > 0 map click teleport will act as a HALO drop and automatically assign parachutes to units
[] execVM "f\mapClickTeleport\f_mapClickTeleportAction.sqf";

// ====================================================================================
// Misc settings
[] execVM "scripts\miscsettings.sqf";

// ====================================================================================
//tanaKa's crew-served weapon recoil fix
[] execVM "scripts\csw_recoil.sqf";

// ====================================================================================
// tanaKa's paradrop action to all aircraft
[] execVM "scripts\paradrop.sqf";

// ====================================================================================
// tanaKa's safestart and server load script
[] execVM "scripts\serverstart.sqf";

// ====================================================================================	
// tanaKa's crew info display
//[] execVM "scripts\crewinfo\crew.sqf";

// ====================================================================================	
// tanaKa's no looting (enable if necessary)
//[] execVM "scripts\looting.sqf";

// ====================================================================================	
// tanaKa's ear protection script for unbalanced vehicle audio (FUCK YOU RHS)
[] execVM "scripts\earpro\earpro.sqf";

// ====================================================================================	
// tanaKa's veh spawner
[] execVM "scripts\vehiclespawner\factoryaction.sqf";

// ====================================================================================	
//Plank Settings
call compile preprocessFileLineNumbers "plank\plank_init.sqf";

// ====================================================================================	
//Tao Settings
tao_foldmap_changePermitted = false;
tao_foldmap_alternateDrawPaper = true;