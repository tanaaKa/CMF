while {true} do {
	{F3_Zeus addCuratorEditableObjects [[_x]]} foreach allunits;
	{F3_Zeus_1 addCuratorEditableObjects [[_x]]} foreach allunits;    
	{F3_Zeus addCuratorEditableObjects [[_x]]} foreach vehicles;
	{F3_Zeus_1 addCuratorEditableObjects [[_x]]} foreach vehicles;
	{F3_Zeus addCuratorEditableObjects [[_x]]} foreach listobjects;
	{F3_Zeus_1 addCuratorEditableObjects [[_x]]} foreach listobjects;
	sleep 30;
};