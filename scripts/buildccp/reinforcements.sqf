/* 	
	Allows medics to request reinforcements to their CCPs
	By: tanaKa
	
	TODO:
		-Switch to ace interact?
*/
params["_grid","_name"];

_grid = mapGridPosition player; //define grid location of CCP for hint
_name = name player; //define name of player for hint

hint format ["%1 has requested reinforcements to the CCP at GR#%2!",_name,_grid];
sleep 15; 
hint ""; //wait five seconds and delete the ccp hint