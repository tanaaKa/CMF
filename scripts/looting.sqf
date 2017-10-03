player addEventHandler ["InventoryOpened",{
        _this spawn {
            waitUntil {
                not isNull findDisplay 602
            };
            if (_this select 1 isKindOf "Man") then {closeDialog 602 && titleText ["You are not allowed to loot\ndead soldiers", "plain down"];};
        }
}];