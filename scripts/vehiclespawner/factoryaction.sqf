//Define each sides factory
_blufactory = missionNamespace getVariable "vehfac1";
_indfactory = missionNamespace getVariable "vehfac2";
_opffactory = missionNamespace getVariable "vehfac3";

//Add actions to each factory
_blufactory addaction ["Spawn <t color='#1279d1'>Transport Truck</t>", "scripts\vehiclespawner\createtruck.sqf"];
_blufactory addaction ["Spawn <t color='#1279d1'>Fireteam Vehicle</t>", "scripts\vehiclespawner\createftveh.sqf"];
_blufactory addaction ["Spawn <t color='#1279d1'>Armor</t>", "scripts\vehiclespawner\createarmor.sqf"];
_blufactory addaction ["Spawn <t color='#1279d1'>Boat</t>", "scripts\vehiclespawner\createboat.sqf"];
_blufactory addaction ["<t color='#FF0000'>CLEAR PAD</t>", "scripts\vehiclespawner\clear.sqf"];

//Add actions to each factory
_indfactory addaction ["Spawn <t color='#1279d1'>Transport Truck</t>", "scripts\vehiclespawner\indcreatetruck.sqf"];
_indfactory addaction ["Spawn <t color='#1279d1'>Fireteam Vehicle</t>", "scripts\vehiclespawner\indcreateftveh.sqf"];
_indfactory addaction ["Spawn <t color='#1279d1'>Armor</t>", "scripts\vehiclespawner\indcreatearmor.sqf"];
_indfactory addaction ["Spawn <t color='#1279d1'>Boat</t>", "scripts\vehiclespawner\indcreateboat.sqf"];
_indfactory addaction ["<t color='#FF0000'>CLEAR PAD</t>", "scripts\vehiclespawner\indclear.sqf"];

//Add actions to each factory
_opffactory addaction ["Spawn <t color='#1279d1'>Transport Truck</t>", "scripts\vehiclespawner\opfcreatetruck.sqf"];
_opffactory addaction ["Spawn <t color='#1279d1'>Fireteam Vehicle</t>", "scripts\vehiclespawner\opfcreateftveh.sqf"];
_opffactory addaction ["Spawn <t color='#1279d1'>Armor</t>", "scripts\vehiclespawner\opfcreatearmor.sqf"];
_opffactory addaction ["Spawn <t color='#1279d1'>Boat</t>", "scripts\vehiclespawner\opfcreateboat.sqf"];
_opffactory addaction ["<t color='#FF0000'>CLEAR PAD</t>", "scripts\vehiclespawner\opfclear.sqf"];