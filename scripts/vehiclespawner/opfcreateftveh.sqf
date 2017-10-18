#include "..\vehfactory.sqf";

if (isServer) then {
	_veh = _opfftveh createVehicle _opfspawnloc;
	_veh setDir 180;
};

