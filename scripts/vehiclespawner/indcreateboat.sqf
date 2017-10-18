#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _boat createVehicle _indspawnloc;
	_veh setDir 180;
};

