/* 	
	Constructs CCP
	By: tanaKa & Whale

	TODO:
		-Get ACE interact nodes to work with CUP MASH
*/

params["_site"];

// Starts player construction animation.
[player] call ace_common_fnc_goKneeling;
[player, "AinvPknlMstpSnonWrflDr_medic5"] call ace_common_fnc_doAnimation;

// The entire action is within the ACE progressbar call.
[13,_site,{
	params["_site"];
	private["_pos", "_grid", "_ccp", "_name", "_marker", "_hintString"];
	
	_pos = getPos _site; // Gets position of CCP
	_grid = mapGridPosition _pos; // Define grid position of player for hint
	_name = name player; // Define name of player for hint
	_hintString = format ["The Charlie CCP has been established at GR#%1 by %2",_grid,_name]; // Predefine hint

	// Delete backpack pile.
	deleteVehicle _site;
	
	// Creates physical MASH at location of construction site
	_ccp = "MASH" createVehicle _pos;
	_ccp addItemCargoGlobal ["ACE_epinephrine", 10];
	_ccp addItemCargoGlobal ["ACE_morphine", 20];
	_ccp addItemCargoGlobal ["ACE_Bodybag", 10];
	_ccp addItemCargoGlobal ["ACE_quikclot", 20];
	_ccp addItemCargoGlobal ["ACE_bloodIV", 10];
	_ccp addItemCargoGlobal ["ACE_plasmaIV", 10];
	_ccp addItemCargoGlobal ["ACE_salineIV", 10];
	_ccp addItemCargoGlobal ["ACE_tourniquet", 5];
	_ccp addItemCargoGlobal ["ACE_elasticBandage", 20];
	_ccp addItemCargoGlobal ["ACE_Chemlight_HiRed", 2]; 
	_ccp addItemCargoGlobal ["ACE_Chemlight_HiYellow", 2]; 
	_ccp addItemCargoGlobal ["ACE_Chemlight_HiWhite", 2]; 
	_ccp setDir (getDir _site);
	_ccp allowdamage false;
	
	// Add ACE interact to call reinforcements
	//_reinforceAction = ["reinforceCCP","Call for Reinforcements","",{_target execVM "scripts\buildccp\reinforcements.sqf";},{true},{}] call ace_interact_menu_fnc_createAction;
	//[_ccp, 0, ["ACE_MainActions"], _reinforceAction] remoteExecCall ["ace_interact_menu_fnc_addActionToObject",0]; 
	// Or, rather we would -- if the node wasn't configured terribly for the CUP mash building.
	// It appears inside the thing in the center. We're using holdAction for now.
	[  _ccp,  
	"Call Reinforcements",  // title
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",  // icon
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",  // icon while in-progress
	"_this distance _target < 8",  // distance to initiate
	"_caller distance _target < 12",// distance to hold
	{},  
	{},  
	{[_target] execVM "scripts\buildccp\reinforcements.sqf";},  // code to run on completion
	{},  
	[],  
	2,  // duration
	0,  
	true,  // disappears on completion
	false  
	] remoteExecCall ["BIS_fnc_holdActionAdd",0]; // syncs across clients
	
	// Creates a marker for the new physical MASH
	_marker = createMarker ["C CCP", _ccp];
	_marker setMarkerShape "ICON";
	_marker setMarkerType "loc_hospital";
	_marker setMarkerColor "ColorWhite";
	_marker setMarkerText "C CCP";

	// Alerts all players that a MASH has been constructed
	_hintString remoteExec ["hint", 0];
	
	// Ends animation
	player switchMove ([player] call ace_common_fnc_getDefaultAnim);
}, {
	// Ends animation if play exits progress bar
	player switchMove ([player] call ace_common_fnc_getDefaultAnim);
}, "Constructing CCP..."] call ace_common_fnc_progressBar;
