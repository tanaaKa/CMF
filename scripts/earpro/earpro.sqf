_sepa = ["<t color='#ffff33'>Put in ear pro</t>",{
	_u = _this select 1;
	_i = _this select 2;
	if (soundVolume == 1) then {
		1 fadeSound 0.3;
		_u setUserActionText [_i, "<t color='#ffff33'>Take out ear pro</t>"]
	} else {
		1 fadeSound 1;
		_u setUserActionText [_i, "<t color='#ffff33'>Put in ear pro</t>"]
	}
},[],-90,false,true,"","_target == vehicle player"];
player addAction _sepa;
player addEventHandler ["Respawn",{
	1 fadeSound 1;
	(_this select 0) addAction _sepa;
}];