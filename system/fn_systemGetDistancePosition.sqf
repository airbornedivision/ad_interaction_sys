/*
Position fuer wegschicken berechnen. Blickrichtung Spieler + Distanz von 50-150m.

Arguments :
0: unit with the attached action
1: caller of the order

Return :
3D Position [ARRAY]
*/
private ["_unit","_caller","_unitpos","_callerdirection","_position","_return"];

_unit = _this select 0;
_caller = _this select 1;

_unitpos = getPos _unit;
_callerdirection = getdir _caller;

_position = [_caller, (50 + (random 100)) , _callerdirection] call BIS_fnc_relPos;

_return = _position;

_return;