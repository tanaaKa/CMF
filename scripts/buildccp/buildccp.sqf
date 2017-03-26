/* 	
	Creates a CCP for medics
	By: tanaKa
	
	TODO:
		-Make more efficient
		-Switch to ace interact?
*/
params["_pos", "_grid", "_ccp", "_name", "_marker"];

_pos = player getPos [5, 0]; //define position for ccp to build (5m in front of player)
_grid = mapGridPosition player; //define grid location of CCP for hint
_name = name player; //define name of player for hint

_ccp = "MASH" createVehicle _pos;
_ccp addaction ["<t color=""#990415"">" +"Request Reinforcements","scripts\buildccp\reinforcements.sqf"];
_ccp addItemCargoGlobal ["ACE_epinephrine", 10];
_ccp addItemCargoGlobal ["ACE_morphine", 10];
_ccp addItemCargoGlobal ["ACE_Bodybag", 10];
player removeAction 0; //remove 'Build CCP' hint from player

_marker = createMarker ["CCP", player];
_marker setMarkerShape "ICON";
_marker setMarkerType "loc_hospital";
_marker setMarkerColor "ColorWhite";
_marker setMarkerText "CCP";

hint format ["A CCP has been established at GR#%1 by %2",_grid,_name];
sleep 5; 
hint ""; //wait five seconds and delete the ccp hint