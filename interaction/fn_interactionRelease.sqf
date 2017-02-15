/*
Sends unit away

Arguments :
0: unit with the attached action
1: caller of the order

Return :
-
*/
private ["_unit","_caller"];

_unit = _this select 0;
removeAllActions _unit;

detach _unit;