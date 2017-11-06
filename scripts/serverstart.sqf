/* 	
	Server start-script
	By: tanaKa-
	Ensures the HC has time to init and balance.
	
	TODO:
		-Think of things to do to improve this.
*/

cutText ["Initializing. Do not move.", "BLACK IN", 30]; 										

sleep 30; 
cutText ["Server Initialized. Free to move.", "PLAIN"];
sleep 5;

[
    [
        ["MISSION NAME", "<t align = 'center' shadow = '1' size = '0.9'>%1</t><br/>",5],
        ["By: Author","<t align = 'center' shadow = '1' size = '0.6'>%1</t><br/>",5],
		["CMF 4.0h3","<t align = 'center' shadow = '1' size = '0.4'>%1</t><br/>",5],
         [format ["%3/%2/%1 %4:%5",date select 0, date select 1, date select 2,date select 3, date select 4],"<t align = 'center' shadow = '1' size = '0.4'>%1</t>",10]
    ] , 1, 1.05
] spawn BIS_fnc_typeText;