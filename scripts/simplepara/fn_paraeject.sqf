params ["_veh", "_unit"];
_veh = _this select 0;
_unit = _this select 1;
_Offset = selectRandom [[0,-15,-10],[0,-25,-10],[0,-35,-10],[0,-25,-15],[0,-10,-15]];
_worldPos = _veh modelToWorld _Offset;
_vel = velocity _veh;
_dir = direction _veh;

_vel params ["_xVel, _yVel", "_zVel"];
//_speed = sqrt ( _x*_x + _y*_y ) * 3.6;
_speed = 1;

MoveOut _unit;
sleep 1;
_para = "NonSteerable_Parachute_F" createVehicle _worldPos;
_para setPos _worldPos;
_unit moveIndriver _para;
_para setVelocity [
	_xVel + (sin _dir * _speed),
	_yVel + (cos _dir * _speed),
	_zVel
];

waitUntil {((getPosATL _unit select 2) < 10) && {(vehicle _unit) isEqualTo _unit}};
_unit allowdamage false;
sleep 2;
_unit allowdamage true;
