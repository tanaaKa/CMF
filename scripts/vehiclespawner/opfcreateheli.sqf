#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _opfheli createVehicle _opfairspawnloc;
	_veh setDir 180;
};

