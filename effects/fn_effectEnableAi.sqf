/*
AI aktivieren

Arguments :
0: unit with the attached action
1: variable of the enabled ai [STRING]

Return :
-
*/
private ["_unit","_var"];

_unit = _this select 0;
_var = _this select 1;

[_unit,_var] remoteExecCall ["adint_fnc_functionEnableAi", _unit];
