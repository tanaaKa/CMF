#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _indtransport createVehicle _indspawnloc;
	_veh setDir 180;
};

