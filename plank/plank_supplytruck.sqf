if (!isDedicated) then
{
	if (isNil "supplytruck1") exitwith {};
	// add supply truck variable names to the _supplytrucks and _supplytrucksarray below, make sure all but the last has a , after it.
	_supplytrucks = ["supplytruck1"];
	_supplytrucksarray = [supplytruck1];
	_supplytruckcount = count _supplytrucks;
	if (_supplytruckcount <2)
	then
	{
		supplytruck1 addaction ["Take FTL Supplies", "plank\plank_unload.sqf", "ftl", 1.90, false, true, "", ""];
		supplytruck1 addaction ["Take SL Supplies", "plank\plank_unload.sqf", "sl", 1.90, false, true, "", ""];
		supplytruck1 addaction ["Take PL Supplies", "plank\plank_unload.sqf", "pl", 1.90, false, true, "", ""];
		supplytruck1 addaction ["Rifleman Building Supplies", "plank\plank_unload.sqf", "rif", 1.90, false, true, "", ""];
		supplytruck1 addaction ["Take Floodlight", "plank\plank_unload.sqf", "light", 1.90, false, true, "", ""];
		//	_supplytruck addaction ["Unload ____", "plank\plank_unload.sqf", "_____", 1.89, false, true, "", ""];
	}
	else
	{
	{
		_x addaction ["Take FTL Supplies", "plank\plank_unload.sqf", "ftl", 1.90, false, true, "", ""];
		_x addaction ["Take SL Supplies", "plank\plank_unload.sqf", "sl", 1.90, false, true, "", ""];
		_x addaction ["Take PL Supplies", "plank\plank_unload.sqf", "pl", 1.90, false, true, "", ""];
		_x addaction ["Rifleman Building Supplies", "plank\plank_unload.sqf", "rif", 1.90, false, true, "", ""];
		_x addaction ["Take Floodlight", "plank\plank_unload.sqf", "light", 1.90, false, true, "", ""];
		//	_x addaction ["Unload ____", "plank\plank_unload.sqf", "_____", 1.89, false, true, "", ""];
	} foreach _supplytrucksarray;
	};
};
