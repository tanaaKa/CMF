if (!isDedicated) then
{
	if (isNil "supplytruck1") exitwith {};
	// add supply truck variable names to the _supplytrucks and _supplytrucksarray below, make sure all but the last has a , after it.
	_supplytrucks = ["supplytruck1","supplytruck2","supplytruck3"];
	_supplytrucksarray = [supplytruck1,supplytruck2,supplytruck3];
	_supplytruckcount = count _supplytrucks;
	if (_supplytruckcount <2)
	then
	{
		supplytruck1 addaction ["Unload Razor Wire", "plank\plank_unload.sqf", "razor", 1.99, false, true, "", ""];
		supplytruck1 addaction ["Unload Short Sandbag Wall", "plank\plank_unload.sqf", "shortsand", 1.98, false, true, "", ""];
		supplytruck1 addaction ["Unload Wide Sandbag Wall", "plank\plank_unload.sqf", "widesand", 1.97, false, true, "", ""];
		supplytruck1 addaction ["Unload Concrete Wall", "plank\plank_unload.sqf", "concrete", 1.96, false, true, "", ""];
		supplytruck1 addaction ["Unload Small Bunker", "plank\plank_unload.sqf", "smallbunker", 1.95, false, true, "", ""];
		supplytruck1 addaction ["Unload Watchtower", "plank\plank_unload.sqf", "watchtower", 1.94, false, true, "", ""];
		supplytruck1 addaction ["Unload Bunker", "plank\plank_unload.sqf", "bunker", 1.93, false, true, "", ""];
		supplytruck1 addaction ["Unload Bunker Tower", "plank\plank_unload.sqf", "bunkertower", 1.92, false, true, "", ""];
		supplytruck1 addaction ["Unload Roadblock", "plank\plank_unload.sqf", "roadblock", 1.91, false, true, "", ""];
		supplytruck1 addaction ["Unload FOB", "plank\plank_unload.sqf", "fob", 1.90, false, true, "", ""];
		//	_supplytruck addaction ["Unload ____", "plank\plank_unload.sqf", "_____", 1.89, false, true, "", ""];
	}
	else
	{
	{
		_x addaction ["Unload Razor Wire", "plank\plank_unload.sqf", "razor", 1.99, false, true, "", ""];
		_x addaction ["Unload Short Sandbag Wall", "plank\plank_unload.sqf", "shortsand", 1.98, false, true, "", ""];
		_x addaction ["Unload Wide Sandbag Wall", "plank\plank_unload.sqf", "widesand", 1.97, false, true, "", ""];
		_x addaction ["Unload Concrete Wall", "plank\plank_unload.sqf", "concrete", 1.96, false, true, "", ""];
		_x addaction ["Unload Small Bunker", "plank\plank_unload.sqf", "smallbunker", 1.95, false, true, "", ""];
		_x addaction ["Unload Watchtower", "plank\plank_unload.sqf", "watchtower", 1.94, false, true, "", ""];
		_x addaction ["Unload Bunker", "plank\plank_unload.sqf", "bunker", 1.93, false, true, "", ""];
		_x addaction ["Unload Bunker Tower", "plank\plank_unload.sqf", "bunkertower", 1.92, false, true, "", ""];
		_x addaction ["Unload Roadblock", "plank\plank_unload.sqf", "roadblock", 1.91, false, true, "", ""];
		_x addaction ["Unload FOB", "plank\plank_unload.sqf", "fob", 1.90, false, true, "", ""];
		//	_x addaction ["Unload ____", "plank\plank_unload.sqf", "_____", 1.89, false, true, "", ""];
	} foreach _supplytrucksarray;
	};
};