_veh = _this select 0;
_unit = _this select 1;
_Offset = [[0,-15,-10],[0,-25,-10],[0,-35,-10]] call BIS_fnc_selectRandom; 
_worldPos = _veh modelToWorld _Offset;
_vel = velocity _veh;
_dir = direction _veh;
_x = _vel select 0;
_y = _vel select 1;
_speed = sqrt ( _x*_x + _y*_y ) * 3.6;
_speed = 1;

MoveOut _unit;
sleep 1;
_para = "CUP_T10_Parachute" createVehicle _worldPos;
_para setPos _worldPos;
_unit moveIndriver _para;
_para setVelocity [
	(_vel select 0) + (sin _dir * _speed), 
	(_vel select 1) + (cos _dir * _speed), 
	(_vel select 2)
];

waitUntil {((getPosATL _unit select 2) < 10) AND (vehicle _unit == _unit)}; 
_unit allowdamage false;
sleep 2;
_unit allowdamage true;