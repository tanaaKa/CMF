while {true} do {
   {
    _x addCuratorEditableObjects [allUnits, true];
    _x addCuratorEditableObjects [vehicles, true];
    sleep 60;
   } forEach allCurators; 
}; 