while {true} do
{
	waitUntil 
	{	
		(blufor_ready && {opfor_ready} && {indfor_ready});
	};
	[false] call potato_safeStart_fnc_toggleSafeStart;
};
