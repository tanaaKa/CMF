#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _boat createVehicle _opfspawnloc;
	_veh setDir 180;
};

