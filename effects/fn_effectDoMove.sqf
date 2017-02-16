/*
Einheit an gegebene Position schicken.

Arguments :
0: Object with attached Action

Return :
-
*/
private ["_unit","_position"];

_unit = _this select 0;
_position = _this select 1;

[_unit,_position] remoteExecCall ["doMove", _unit];
