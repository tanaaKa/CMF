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
	case "ladder":
	{
		[_caller, [0, 1, 0, 0, 0, 0, 0, 0]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading Ladder";
	};
//Prefab Groups of Objects
	case "ftl":
	{
		[_caller, [2, 1, 6, 0, 3, 2, 0, 0, 1]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading FTL Supplies";
	};
	case "sl":
	{
		[_caller, [1, 1, 4, 1, 4, 4, 4, 0, 1]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading SL Supplies";
	};
	case "pl":
	{
		[_caller, [1, 1, 4, 1, 4, 4, 4, 1, 2]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading PL Supplies";
	};
/*	case "_____":
	{
		[_caller, [1, 1, 1, 1, 1, 1, 1, 1]] call plank_api_fnc_forceAddFortifications;
		hint "Unloading _____...";
	};
*/
};