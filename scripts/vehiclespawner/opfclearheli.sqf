_objs = nearestObjects [getMarkerPos "airfac3pad", [], 3];

{
if (_x isKindOf "Building") then {false;} else { deleteVehicle _x };

}forEach _objs;