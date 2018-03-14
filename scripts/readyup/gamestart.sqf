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

///////////////////////////////////////////////////////////////
//Display mission name/author
sleep 5;

_title = getText (missionConfigFile >> "MissionSQM" >> "Mission" >> "Intel" >> "briefingName");
_author = getMissionConfigValue ["Author",0];
_cmfvers = getText (missionConfigFile >> "cmfVers");

[
    [
        [_title, "<t align = 'center' shadow = '1' size = '0.9'>%1</t><br/>",5],
        ["By: " + _author,"<t align = 'center' shadow = '1' size = '0.6'>%1</t><br/>",5],
		[_cmfvers,"<t align = 'center' shadow = '1' size = '0.4'>%1</t><br/>",5],
         [format ["%3/%2/%1 %4:%5",date select 0, date select 1, date select 2,date select 3, date select 4],"<t align = 'center' shadow = '1' size = '0.4'>%1</t>",10]
    ] , 1, 1.05
] spawn BIS_fnc_typeText;
