/* 	
	Server start-script
	By: tanaKa-
	Ensures the HC has time to init and balance.
	
	TODO:
		-Think of things to do to improve this.
*/

cutText ["Initializing. Do not move.", "BLACK IN", 30]; 										
[true] call potato_safeStart_fnc_toggleSafeStart;


sleep 30; 
cutText ["Server Initialized. Free to move.", "PLAIN"];

sleep 5;

["<t color='#FFFFFF' size = '.8'>**Mission Title**<br />**By Author**</t>",1,1,7,1,0] spawn BIS_fnc_dynamicText;