///////////////////////////////////////////////////////////////
//	Gamestart Script
//	By: tanaKa-
//	Executed after all leadership has readied up
//	
//	TODO:
//		Make more efficient
//
///////////////////////////////////////////////////////////////
//Remove all the unready actions from players if they're on the map
if !(isNil "bluPL") then {
bluPL removeAction bluUnready;
};
if !(isNil "bluASL") then {
bluASL removeAction bluUnready;
};

if !(isNil "opfPL") then {
opfPL removeAction opfUnready;
};
if !(isNil "opfASL") then {
opfASL removeAction opfUnready;
};

if !(isNil "indPL") then {
indPL removeAction indUnready;
};
if !(isNil "indASL") then {
indASL removeAction indUnready;
};
///////////////////////////////////////////////////////////////
//Display game starting message to all players
sleep 2;
["MISSION IS LIVE IN 30 SECONDS","systemChat"] call BIS_fnc_MP;
"MISSION IS LIVE IN 30 SECONDS" remoteExec ["hint", 0];
sleep 15;
["MISSION IS LIVE IN 15 SECONDS","systemChat"] call BIS_fnc_MP;
"MISSION IS LIVE IN 15 SECONDS" remoteExec ["hint", 0];
sleep 10;
["MISSION IS LIVE IN 5 SECONDS","systemChat"] call BIS_fnc_MP;
"MISSION IS LIVE IN 5 SECONDS" remoteExec ["hint", 0];
sleep 4;
["MISSION IS LIVE","systemChat"] call BIS_fnc_MP;
hint "";
///////////////////////////////////////////////////////////////
//Disable safestart (server only call)
if (isServer) then {
	[false] call potato_safeStart_fnc_toggleSafeStart;
};
