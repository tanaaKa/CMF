#include "..\vehfactory.sqf";

if (isServer) then {
	_heli = _bluheli createVehicle _bluairspawnloc;
	_heli setDir 180;
};

