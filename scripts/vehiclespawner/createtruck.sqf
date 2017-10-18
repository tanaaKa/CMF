#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _blutransport createVehicle _bluspawnloc;
	_veh setDir 180;
};

