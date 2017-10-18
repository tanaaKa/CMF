#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _bluftveh createVehicle _bluspawnloc;
	_veh setDir 180;
};

