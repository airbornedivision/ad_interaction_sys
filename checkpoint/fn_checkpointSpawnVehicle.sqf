/*
Creates empty vehicle

Arguments :
0: String : Classname of vehicle
1: Object : Object of the checkpoint position
2:
3:

Return :
Object
*/

private ["_classname","_spawnpoint","_vehicle","_return"];

_classname = _this select 0;
_spawnpoint = _this select 1;

_vehicle = _classname createVehicle getpos _spawnpoint;

_vehicle setdir getdir _spawnpoint;
_return = _vehicle;

_return;