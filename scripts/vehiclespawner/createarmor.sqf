#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _bluarmor createVehicle _bluspawnloc;
	_veh setDir 180;
};

