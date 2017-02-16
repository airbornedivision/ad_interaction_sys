/*
Setzt die Haltung einer Einheit - Stehen - geduckt - liegend
Deaktiviert die AI damit die Haltung bleibt.

Arguments :
0: unit with the attached action
1: the stance of the unit [STRING] - UP - DOWN - AUTO - MIDDLE

Return :
-
*/
private ["_unit","_pos"];

_unit = _this select 0;
_pos = _this select 1;

[_unit,_pos] remoteExecCall ["setUnitPos", _unit];
[_unit,"Move"] call adint_fnc_effectDisableAi;
