/*
Set a variable

Arguments :
0: Object with the variable [OBJECT]
1: Name of the variable [STRING]
2: Value of the variable [STRING,NUMBER,BOOL]
3: Public variable [BOOL]

Return :
-
Example:
[_this select 0,"adint_Name","Kevin",true] call adint_fnc_systemSetVariable;
*/
private ["_unit","_var","_value","_global"];

_unit = _this select 0;
_var = _this select 1;
_value = _this select 2;
_global = _this select 3;

_unit setVariable [_var, _value, _global];