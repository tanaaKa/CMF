/* 	
	Paradrop Action to All aircraft above 100m
	By: tanaKa & Scorch
	
	TODO:
		-No idea
*/

_scripts_paraeject = compileFinal preprocessFileLineNumbers "scripts\simplepara\fn_paraeject.sqf";

{
	if (_x isKindOf "Air") then {
		_x addaction [("<t color=""#DF0101"">" + ("PARADROP") + "</t>"), "scripts\simplepara\fn_paraeject.sqf", "", 10, false, true, "", "(getPosATL _target select 2) > 100"]; 
	};
} foreach vehicles;