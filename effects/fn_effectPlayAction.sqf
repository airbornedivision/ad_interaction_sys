/*
Sends unit away

Arguments :
0: unit that should play the action
1: name of the action [STRING]

Return :
-
*/
private ["_unit","_var"];

_unit = _this select 0;
_Var = _this select 1;

_unit playActionNow _var;