#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _indheli createVehicle _indairspawnloc;
	_veh setDir 180;
};