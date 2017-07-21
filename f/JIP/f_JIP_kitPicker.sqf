#define DLG (uiNamespace getVariable "KitPick_Dlg")
#define COMBO (uiNamespace getVariable "KitPick_Combo")
#define USEBUTTON (uiNamespace getVariable "KitPick_UseBtn")

KitPickInit =
{
    uiNamespace setVariable ["KitPick_Dlg", _this select 0];
    uiNamespace setVariable ["KitPick_Combo", (_this select 0) displayCtrl 1];
    uiNamespace setVariable ["KitPick_UseBtn", (_this select 0) displayCtrl 3];

    USEBUTTON ctrlEnable false;

    private "_idx";
    _idx = COMBO lbAdd "Platoon Leader"; COMBO lbSetData [_idx, "co"];
    _idx = COMBO lbAdd "Squad Leader"; COMBO lbSetData [_idx, "dc"];
	_idx = COMBO lbAdd "Medic"; COMBO lbSetData [_idx, "m"];
    COMBO lbAdd "----";

    _idx = COMBO lbAdd "Fire Team Leader"; COMBO lbSetData [_idx, "ftl"];
    _idx = COMBO lbAdd "Automatic Rifleman"; COMBO lbSetData [_idx, "ar"];
    _idx = COMBO lbAdd "Asst. Automatic Rifleman"; COMBO lbSetData [_idx, "aar"];
	_idx = COMBO lbAdd "Grenadier"; COMBO lbSetData [_idx, "gren"];
    _idx = COMBO lbAdd "Rifleman (AT)"; COMBO lbSetData [_idx, "rat"];
    COMBO lbAdd "----";

	_idx = COMBO lbAdd "MMG - Team Leader"; COMBO lbSetData [_idx, "mmgag"];
	_idx = COMBO lbAdd "MMG - Gunner"; COMBO lbSetData [_idx, "mmgg"];
	_idx = COMBO lbAdd "MAT - Team Leader"; COMBO lbSetData [_idx, "matgag"];
	_idx = COMBO lbAdd "MAT - Gunner"; COMBO lbSetData [_idx, "matg"];
    _idx = COMBO lbAdd "Engineer"; COMBO lbSetData [_idx, "eng"];
    COMBO lbAdd "----";
	
    _idx = COMBO lbAdd "Crew - Driver (repair)"; COMBO lbSetData [_idx, "vd"];
    _idx = COMBO lbAdd "Crew - Gunner"; COMBO lbSetData [_idx, "vg"];
	_idx = COMBO lbAdd "Crew - Commander"; COMBO lbSetData [_idx, "vc"];
	COMBO lbAdd "----";
	
    _idx = COMBO lbAdd "Pilot"; COMBO lbSetData [_idx, "pc"];
    _idx = COMBO lbAdd "Co-Pilot"; COMBO lbSetData [_idx, "pcc"];
	
    _sel = player getVariable "KitPicker_Selection";
    if (!isNil '_sel') then
    {
        COMBO lbSetCurSel _sel;
    };
};

KitPicker_Pick =
{
    private "_idx";
    _idx = lbCurSel COMBO;
    if (_idx < 0) exitWith {};

    _data = COMBO lbData _idx;
    if (_data == "") exitWith {};

    closeDialog 0;
    player setVariable ["f_var_JIP_loadout", _data];
    player setVariable ["KitPicker_Selection", _idx];
    f_var_JIP_state = 3;
};

KitPicker_OnSelChanged =
{
    private "_idx";
    _idx = lbCurSel COMBO;
    if (_idx < 0) exitWith
    {
        USEBUTTON ctrlEnable false;
    };

    _data = COMBO lbData _idx;
    if (_data == "") exitWith
    {
        USEBUTTON ctrlEnable false;
    };
    USEBUTTON ctrlEnable true;
};
