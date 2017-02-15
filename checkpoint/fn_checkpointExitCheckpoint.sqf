/*
Vehicle moves to last position and despawned

Arguments :
0: [Object] Driver of the vehicle
1: [Ojbect] Despawn position
2:
3:

Return :
-
*/

private ["_driver","_exit","_position"];

_driver = _this select 0;
_exit = _this select 1;

_vehicle = vehicle _driver;
_position = getpos _exit;
_driver domove _position;

waitUntil {(_driver distance _exit < 50)};

{
	deleteVehicle _x;
} foreach crew _vehicle;

deleteVehicle _vehicle;
