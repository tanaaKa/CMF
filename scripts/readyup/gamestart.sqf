waitUntil 
	{    
        (blufor_ready && {opfor_ready} && {indfor_ready});
    };
	if !(isNil "bluPL") then {
	bluPL removeAction bluUnready;
	}
	else {};
	if !(isNil "bluASL") then {
	bluASL removeAction bluUnready;
	}
	else {};
	
	if !(isNil "opfPL") then {
	opfPL removeAction opfUnready;
	}
	else {};
	if !(isNil "opfASL") then {
	opfASL removeAction opfUnready;
	}
	else {};
	
	if !(isNil "indPL") then {
	indPL removeAction indUnready;
	}
	else {};
	if !(isNil "indASL") then {
	indASL removeAction indUnready;
	}
	else {};
	
	sleep 2;
    ["MISSION IS LIVE IN 10 SECONDS","systemChat"] call BIS_fnc_MP;
    "MISSION IS LIVE IN 10 SECONDS" remoteExec ["hint", 0];
    sleep 5;
    ["MISSION IS LIVE IN 5 SECONDS","systemChat"] call BIS_fnc_MP;
    "MISSION IS LIVE IN 5 SECONDS" remoteExec ["hint", 0];
    sleep 4;
    ["MISSION IS LIVE","systemChat"] call BIS_fnc_MP;
	hint "";
	
    [false] call potato_safeStart_fnc_toggleSafeStart;
