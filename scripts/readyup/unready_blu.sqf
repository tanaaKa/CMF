///////////////////////////////////////////////////////////////
//	Makes BLU un-ready
//	By: tanaKa-
//	Sends hint and systemchat that BLUFOR is un-ready
//	
//	TODO:
//		
//
///////////////////////////////////////////////////////////////
//define and send global hint to all clients
_hintString = "BLUFOR Unready"; 
_hintString remoteExec ["hint", 0];

//send global systemChat as well for redundancy
["BLUFOR Unready","systemChat"] call BIS_fnc_MP;

//set blufor ready flag to true for gamestart fnc
blufor_ready = false;

//remove the un-ready up action so idiots dont spam it
(_this select 0) removeAction bluUnready;
blurdyup = (_this select 0) addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_blu.sqf"];
///////////////////////////////////////////////////////////////