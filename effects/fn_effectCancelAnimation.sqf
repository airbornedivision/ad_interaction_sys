/*
Plays an animation

Arguments :
0: Object with the variable [OBJECT]

Return :
-
*/
private ["_unit"];

_unit = _this select 0;


[_unit,""] remoteExecCall ["switchMove", _unit];
[_unit,"AUTO"] remoteExecCall ["setUnitPos", _unit];
