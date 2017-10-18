#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _boat createVehicle _bluspawnloc;
	_veh setDir 180;
};

