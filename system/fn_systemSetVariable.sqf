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

_unit = param [0,objNull];
_var = param [1,""];
_value = param [2,0];
_global = param [3,false];

_unit setVariable [_var, _value, _global];
