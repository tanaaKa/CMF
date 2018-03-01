///////////////////////////////////////////////////////////////
//	Makes BLU ready
//	By: tanaKa-
//	Sends hint and systemchat that BLUFOR is ready
//	
//	TODO:
//		
//
///////////////////////////////////////////////////////////////
//define and send global hint to all clients
_hintString = "BLUFOR Ready"; 
_hintString remoteExec ["hint", 0];

//send global systemChat as well for redundancy
["BLUFOR Ready","systemChat"] call BIS_fnc_MP;

//set blufor ready flag to true for gamestart fnc
blufor_ready = true;
publicVariable "blufor_ready";

//remove the ready up action so idiots dont spam it
(_this select 0) removeAction blurdyup;
bluUnready = (_this select 0) addaction ["<t color='#ff0000'>Unready</t>","scripts\readyup\unready_blu.sqf"];
///////////////////////////////////////////////////////////////