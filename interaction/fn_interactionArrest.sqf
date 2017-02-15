/*
Arrest unit

Arguments :
0: unit with the attached action

Return :
-
*/
private ["_unit"];

_unit = _this select 0;

[_unit] call adint_fnc_effectArrest;