#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _opftransport createVehicle _opfspawnloc;
	_veh setDir 180;
};

