#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _indftveh createVehicle _indspawnloc;
	_veh setDir 180;
};

