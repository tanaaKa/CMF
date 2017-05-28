_target = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_type = _this select 3;
switch (_type) do
{
	default
    {
// if you get the hint below the case name is mismatched with the name in plank_supplytruck.sqf
        hint "You don't find anything!";
    };
//^ DONT TOUCH ABOVE

// Individual objects
	case "smallbunker":
	{
		[_caller, [1, 0, 0, 0, 0, 0, 0, 0]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading Small Bunker...";
	};
	case "bunker":
	{
		[_caller, [0, 1, 0, 0, 0, 0, 0, 0]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading Bunker...";
	};
	case "widesand":
	{
		[_caller, [0, 0, 1, 0, 0, 0, 0, 0]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading Wide Sandbag Wall...";
	};
	case "watchtower":
	{
		[_caller, [0, 0, 0, 1, 0, 0, 0, 0]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading Watchtower...";
	};
	case "shortsand":
	{
		[_caller, [0, 0, 0, 0, 1, 0, 0, 0]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading Short Sandbag Wall...";
	};
	case "razor":
	{
		[_caller, [0, 0, 0, 0, 0, 1, 0, 0]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading Razor Wire...";
	};
	case "concrete":
	{
		[_caller, [0, 0, 0, 0, 0, 0, 1, 0]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading Concrete Wall...";
	};
	case "bunkertower":
	{
		[_caller, [0, 0, 0, 0, 0, 0, 0, 1]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading Bunker Tower...";
	};
//Prefab Groups of Objects
	case "roadblock":
	{
		[_caller, [1, 0, 2, 0, 2, 2, 0, 0]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading Roadblock...";
	};
	case "fob":
	{
		[_caller, [1, 1, 4, 1, 4, 4, 1, 1]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading FOB...";
	};
/*	case "_____":
	{
		[_caller, [1, 1, 1, 1, 1, 1, 1, 1]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading _____...";
	};
*/
};