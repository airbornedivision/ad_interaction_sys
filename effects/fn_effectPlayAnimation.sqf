/*
Animation abspielen.

Arguments :
0: Object with the variable [OBJECT]
1: Name of the animation [STRING]
1: variable of the performed action [STRING]. Must be BOOL

Return :
-
*/
private ["_unit"];

_unit = _this select 0;
_animation = _this select 1;
_var = _this select 2;

[[ _unit,_animation],"playMove",true] call BIS_fnc_MP;
[[ _unit,_animation],"switchMove",true] call BIS_fnc_MP;

/*
[_unit,_var] call adint_fnc_effectIsDead;
*/