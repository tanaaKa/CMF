///////////////////////////////////////////////////////////////
//	Makes OPF un-ready
//	By: tanaKa-
//	Sends hint and systemchat that OPFOR is un-ready
//	
//	TODO:
//		
//
///////////////////////////////////////////////////////////////
//define and send global hint to all clients
_hintString = "OPFOR Unready"; 
_hintString remoteExec ["hint", 0];

//send global systemChat as well for redundancy
["OPFOR Unready","systemChat"] call BIS_fnc_MP;

//set opfor ready flag to true for gamestart fnc
opfor_ready = false;

//remove the un-ready up action so idiots dont spam it
(_this select 0) removeAction opfUnready;
opfrdyup = (_this select 0) addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_opf.sqf"];
///////////////////////////////////////////////////////////////