/* 	
	Packs up the CCP for medics
	By: tanaKa
	
	TODO:
		-Make more efficient
		-Switch to ace interact?
*/
params["_ccp"];

_ccp = _this select 0;
deleteVehicle _ccp;

player addaction ["<t color=""#990415"">" +"Build CCP","scripts\buildccp\buildccp.sqf",[],6,true,false,"","_target == player"];

deleteMarker "CCP";

