/*
Forces a unit to stop

Arguments :
0: unit with the attached action
1: caller of the order

Return :
-
*/
private ["_unit"];

_unit = _this select 0;

[_unit,"Move"] call adint_fnc_effectDisableAi;
[_unit,"adint_hasStopped",true,true] call adint_fnc_systemSetVariable;

[_unit] spawn adint_fnc_systemCheckEscape;
