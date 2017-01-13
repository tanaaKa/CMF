/* 	
	Crew-served weapon recoil fix
	By: tanaKa-
	Increases recoil on all large caliber weapons in all vehicles and statics
	
	TODO:
		-Randomize recoil a bit more with algorithms
		-Improve "vehicle" detection 
*/

_vehicles = vehicles;

{
	if (_x in _vehicles) then 
	{_x addEventHandler ["Fired", 
	{
		addCamShake 
			[
				if (cameraView == "EXTERNAL") then 
				[
					{0.1}, {2 max random 3}
				], 
			0.6, 
			500
			];
		}];
	};
} forEach vehicles;
