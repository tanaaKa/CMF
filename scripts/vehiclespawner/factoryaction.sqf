//Define each sides factory
_blufactory = missionNamespace getVariable "vehfac1";
_bluairfac = missionNamespace getVariable "airfac1";
_indfactory = missionNamespace getVariable "vehfac2";
_indairfac = missionNamespace getVariable "airfac2";
_opffactory = missionNamespace getVariable "vehfac3";
_opfairfac = missionNamespace getVariable "airfac3";

//Add actions to each factory
_blufactory addaction ["Spawn <t color='#1279d1'>Transport Truck</t>", "scripts\vehiclespawner\createtruck.sqf"];
_blufactory addaction ["Spawn <t color='#1279d1'>Fireteam Vehicle</t>", "scripts\vehiclespawner\createftveh.sqf"];
_blufactory addaction ["Spawn <t color='#1279d1'>Armor</t>", "scripts\vehiclespawner\createarmor.sqf"];
_blufactory addaction ["Spawn <t color='#1279d1'>Boat</t>", "scripts\vehiclespawner\createboat.sqf"];
_blufactory addaction ["<t color='#FF0000'>CLEAR PAD</t>", "scripts\vehiclespawner\clear.sqf"];
_bluairfac addaction ["Spawn <t color='#1279d1'>Helicopter</t>", "scripts\vehiclespawner\createheli.sqf"];
_bluairfac addaction ["<t color='#FF0000'>CLEAR PAD</t>", "scripts\vehiclespawner\clearheli.sqf"];

//Add actions to each factory
_indfactory addaction ["Spawn <t color='#1279d1'>Transport Truck</t>", "scripts\vehiclespawner\indcreatetruck.sqf"];
_indfactory addaction ["Spawn <t color='#1279d1'>Fireteam Vehicle</t>", "scripts\vehiclespawner\indcreateftveh.sqf"];
_indfactory addaction ["Spawn <t color='#1279d1'>Armor</t>", "scripts\vehiclespawner\indcreatearmor.sqf"];
_indfactory addaction ["Spawn <t color='#1279d1'>Boat</t>", "scripts\vehiclespawner\indcreateboat.sqf"];
_indfactory addaction ["<t color='#FF0000'>CLEAR PAD</t>", "scripts\vehiclespawner\indclear.sqf"];
_indairfac addaction ["Spawn <t color='#1279d1'>Helicopter</t>", "scripts\vehiclespawner\indcreateheli.sqf"];
_indairfac addaction ["<t color='#FF0000'>CLEAR PAD</t>", "scripts\vehiclespawner\indclearheli.sqf"];

//Add actions to each factory
_opffactory addaction ["Spawn <t color='#1279d1'>Transport Truck</t>", "scripts\vehiclespawner\opfcreatetruck.sqf"];
_opffactory addaction ["Spawn <t color='#1279d1'>Fireteam Vehicle</t>", "scripts\vehiclespawner\opfcreateftveh.sqf"];
_opffactory addaction ["Spawn <t color='#1279d1'>Armor</t>", "scripts\vehiclespawner\opfcreatearmor.sqf"];
_opffactory addaction ["Spawn <t color='#1279d1'>Boat</t>", "scripts\vehiclespawner\opfcreateboat.sqf"];
_opffactory addaction ["<t color='#FF0000'>CLEAR PAD</t>", "scripts\vehiclespawner\opfclear.sqf"];
_opfairfac addaction ["Spawn <t color='#1279d1'>Helicopter</t>", "scripts\vehiclespawner\opfcreateheli.sqf"];
_opfairfac addaction ["<t color='#FF0000'>CLEAR PAD</t>", "scripts\vehiclespawner\opfclearheli.sqf"];