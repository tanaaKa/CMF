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
bluPL = missionNamespace getVariable "BLU_PL";
bluASL = missionNamespace getVariable "BLU_ASL";
opfPL = missionNamespace getVariable "OPF_PL";
opfASL = missionNamespace getVariable "OPF_ASL";
indPL = missionNamespace getVariable "IND_PL";
indASL = missionNamespace getVariable "IND_ASL";

//Set the ready variables per team to false
blufor_ready = false;
opfor_ready = false;
indfor_ready = false;
gamestart = false;

///////////////////////////////////////////////////////////////
//Add readyup action to each PL IF they exist, otherwise give to ASL
if (isNil "bluPL") then
{
	if !(isNil "bluASL") then
	{
		blurdyup = bluASL addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_blu.sqf",[],6,true,false,"","_target == player"];
	}
	else
	{
		blufor_ready = true;
		exit;
	};
}
else
{
	blurdyup = bluPL addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_blu.sqf",[],6,true,false,"","_target == player"];
};

if (isNil "opfPL") then
{
	if !(isNil "opfASL") then
	{
		opfrdyup = opfASL addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_opf.sqf",[],6,true,false,"","_target == player"];
	}
	else
	{
		opfor_ready = true;
		exit;
	};
}
else
{
	opfrdyup = opfPL addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_opf.sqf",[],6,true,false,"","_target == player"];
};

if (isNil "indPL") then
{
	if !(isNil "indASL") then
	{
		indrdyup = indASL addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_ind.sqf",[],6,true,false,"","_target == player"];
	}
	else
	{
		indfor_ready = true;
		exit;
	};
}
else
{
	indrdyup = indPL addaction ["<t color='#ff0000'>Ready Up</t>","scripts\readyup\readyup_ind.sqf",[],6,true,false,"","_target == player"];
};
///////////////////////////////////////////////////////////////