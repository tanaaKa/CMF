/* 	
	Allows medics to request reinforcements to their CCPs
	By: tanaKa
	
	TODO:
		-Switch to ace interact?
*/
params["_grid","_name"];

_grid = mapGridPosition player; //define grid location of CCP for hint
_name = name player; //define name of player for hint
_hintString = format ["%1 is requesting reinforcements at the GR#%2 CCP!",_name,_grid]; //define global hint

_hintString remoteExec ["hint", 0];
sleep 10;
hint"";
