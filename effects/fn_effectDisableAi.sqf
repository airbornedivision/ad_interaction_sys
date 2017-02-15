/*
Disables units ai

Arguments :
0: unit with the attached action
1: variable of the disabled ai [STRING]

Return :
-
*/
private ["_unit","_var"];

_unit = _this select 0;
_var = _this select 1;


[_unit,_var] remoteExecCall ["disableAI", _unit];
[_unit,"ad_dynamicSpawn_ignore",true] call adint_fnc_systemSetVariable;
