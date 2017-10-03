player addEventHandler ["InventoryOpened",{
        _this spawn {
            waitUntil {
                not isNull findDisplay 602
            };
            if (_this select 1 isKindOf "Man") then {closeDialog 602 && hint "Looting disabled!"};
        }
}];