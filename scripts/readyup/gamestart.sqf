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
/* ["MISSION IS LIVE IN 30 SECONDS","systemChat"] call BIS_fnc_MP;
"MISSION IS LIVE IN 30 SECONDS" remoteExec ["hint", 0]; */
systemChat "MISSION IS LIVE IN 30 SECONDS";
hint "MISSION IS LIVE IN 30 SECONDS";
sleep 15;
/* ["MISSION IS LIVE IN 15 SECONDS","systemChat"] call BIS_fnc_MP;
"MISSION IS LIVE IN 15 SECONDS" remoteExec ["hint", 0]; */
systemChat "MISSION IS LIVE IN 15 SECONDS";
hint "MISSION IS LIVE IN 15 SECONDS";
sleep 10;
/* ["MISSION IS LIVE IN 5 SECONDS","systemChat"] call BIS_fnc_MP;
"MISSION IS LIVE IN 5 SECONDS" remoteExec ["hint", 0]; */
systemChat "MISSION IS LIVE IN 5 SECONDS";
hint "MISSION IS LIVE IN 5 SECONDS";
sleep 4;
/* ["MISSION IS LIVE","systemChat"] call BIS_fnc_MP; */
systemChat "MISSION IS LIVE";
hint "";
///////////////////////////////////////////////////////////////
//Disable safestart
[false] call potato_safeStart_fnc_toggleSafeStart;

