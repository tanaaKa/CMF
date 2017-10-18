#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _opfarmor createVehicle _opfspawnloc;
	_veh setDir 180;
};

