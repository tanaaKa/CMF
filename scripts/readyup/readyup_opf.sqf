///////////////////////////////////////////////////////////////
//	Makes OPF ready
//	By: tanaKa-
//	Sends hint and systemchat that OPFOR is ready
//	
//	TODO:
//		
//
///////////////////////////////////////////////////////////////
//define and send global hint to all clients
_hintString = "OPFOR Ready"; 
_hintString remoteExec ["hint", 0];

//send global systemChat as well for redundancy
["OPFOR Ready","systemChat"] call BIS_fnc_MP;

//set opfor ready flag to true for gamestart fnc
opfor_ready = true;

//remove the ready up action so idiots dont spam it
(_this select 0) removeAction opfrdyup;
opfUnready = (_this select 0) addaction ["<t color='#ff0000'>Unready</t>","scripts\readyup\unready_opf.sqf"];
///////////////////////////////////////////////////////////////