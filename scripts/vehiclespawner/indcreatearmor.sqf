#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _indarmor createVehicle _indspawnloc;
	_veh setDir 180;
};

