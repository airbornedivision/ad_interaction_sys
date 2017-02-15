/*
Forces a unit to get down

Arguments :
0: unit with the attached action
1: caller of the order

Return :
-
*/
private ["_unit"];

_unit = _this select 0;
_caller = _this select 1;

[_unit,"DOWN"] call adint_fnc_effectStance;

[_unit,"adint_hasStopped",true,true] call adint_fnc_systemSetVariable;