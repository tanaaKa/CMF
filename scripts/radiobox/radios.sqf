_crate = _this select 0;

_crate allowDamage false;
clearWeaponCargo _crate;
clearMagazineCargo _crate;
clearItemCargo _crate;

_crate addItemCargo ["ACRE_PRC343",50];
_crate addItemCargo ["ACRE_PRC152",5];