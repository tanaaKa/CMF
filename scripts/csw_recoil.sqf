/* 	
	Crew-served weapon recoil fix
	By: tanaKa-
	Increases recoil on all large caliber weapons in all vehicles and statics
	Doubles 'normal' recoil of all small arms
	
	TODO:
		-Randomize recoil a bit more with algorithms
		-Improve "vehicle" detection 
		-Stop the shake of other players
*/

player setUnitRecoilCoefficient 2;
player setCustomAimCoef 0.5;

/* {
	_gunner = 
	
	if (_x == _gunner) then 
	{_x addEventHandler ["Fired", 
	{
		addCamShake 
			[
			0.6, 
			500
			];
		}];
	};
} forEach vehicles; */

