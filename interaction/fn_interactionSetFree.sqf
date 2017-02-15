/*
Set unit free after arrest

Arguments :
0: unit with the attached action

Return :
-
*/
private ["_unit"];

_unit = _this select 0;

[_unit,"Move"] call adint_fnc_effectEnableAi;
[_unit,"Anim"] call adint_fnc_effectEnableAi;
[_unit] call adint_fnc_systemResetVars;
[_unit] call adint_fnc_effectCancelAnimation;
