///////////////////////////////////////////////////////////////
//	Makes IND ready
//	By: tanaKa-
//	Sends hint and systemchat that INDFOR is ready
//	
//	TODO:
//		
//
///////////////////////////////////////////////////////////////
//define and send global hint to all clients
_hintString = "INDFOR Ready"; 
_hintString remoteExec ["hint", 0];

//send global systemChat as well for redundancy
["INDFOR Ready","systemChat"] call BIS_fnc_MP;

//set indfor ready flag to true for gamestart fnc
indfor_ready = true;

//remove the ready up action so idiots dont spam it
(_this select 0) removeAction indrdyup;
indUnready = (_this select 0) addaction ["<t color='#ff0000'>Unready</t>","scripts\readyup\unready_ind.sqf"];
///////////////////////////////////////////////////////////////