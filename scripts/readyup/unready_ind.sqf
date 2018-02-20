///////////////////////////////////////////////////////////////
//	Makes IND un-ready
//	By: tanaKa-
//	Sends hint and systemchat that INDFOR is un-ready
//	
//	TODO:
//		
//
///////////////////////////////////////////////////////////////
//define and send global hint to all clients
_hintString = "INDFOR Unready"; 
_hintString remoteExec ["hint", 0];

//send global systemChat as well for redundancy
["INDFOR Unready","systemChat"] call BIS_fnc_MP;

//set indfor ready flag to true for gamestart fnc
indfor_ready = false;

//remove the un-ready up action so idiots dont spam it
(_this select 0) removeAction indUnready;
indrdyup = (_this select 0) addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_ind.sqf"];
///////////////////////////////////////////////////////////////