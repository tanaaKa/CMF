while {true} do {
    {_x addeventhandler ["killed",{
	_this spawn {_unit = _this select 0; removeallweapons _unit;removeallassigneditems _unit;clearmagazinecargo _unit};
	}];
	} forEach allUnits; 
};