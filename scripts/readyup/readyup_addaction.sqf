///////////////////////////////////////////////////////////////
//	Ready-up action
//	By: tanaKa-
//	Adds a ready-up action for each team while potato safestart is active
//	
//	TODO:
//		Collapse if statements (I hate sqf)
//
///////////////////////////////////////////////////////////////
//Pre-setup
if (isServer) then {
	[] execVM "scripts\readyup\gamestart.sqf"
};

//Define PLs and SLs per faction
_bluPL = missionNamespace getVariable "BLU_PL";
_bluASL = missionNamespace getVariable "BLU_ASL";
_opfPL = missionNamespace getVariable "OPF_PL";
_opfASL = missionNamespace getVariable "OPF_ASL";
_indPL = missionNamespace getVariable "IND_PL";
_indASL = missionNamespace getVariable "IND_ASL";

//Set the ready variables per team to false
blufor_ready = false;
opfor_ready = false;
indfor_ready = false;
gamestart = false;

///////////////////////////////////////////////////////////////
//Add readyup action to each PL IF they exist, otherwise give to ASL
if (isNil "_bluPL") then
{
	if !(isNil "_bluASL") then
	{
		blurdyup = _bluASL addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_blu.sqf"];
	}
	else
	{
		blufor_ready = true;
		exit;
	};
}
else
{
	blurdyup = _bluPL addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_blu.sqf"];
};

if (isNil "_opfPL") then
{
	if !(isNil "_opfASL") then
	{
		opfrdyup = _opfASL addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_opf.sqf"];
	}
	else
	{
		opfor_ready = true;
		exit;
	};
}
else
{
	opfrdyup = _opfPL addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_opf.sqf"];
};

if (isNil "_indPL") then
{
	if !(isNil "_indASL") then
	{
		indrdyup = _indASL addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_ind.sqf"];
	}
	else
	{
		indfor_ready = true;
		exit;
	};
}
else
{
	indrdyup = _indPL addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_ind.sqf"];
};
///////////////////////////////////////////////////////////////