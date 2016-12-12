if (!isServer) exitWith {};
_HC = owner "HC"; //"HC" denotes the name of the unit in-game
waitUntil {!isNil "HC"};

 ["HCS_addToHC", "onEachFrame", {
    if ((isPlayer)||(_x in units group _HC)) exitWith {};
    if (isNull _HC) ExitWith{};

    { _x setGroupOwner _HC; //adding all units that aren't player or aren't already under HC to HC
    }forEach allUnits;

}] call BIS_fnc_addStackedEventHandler;