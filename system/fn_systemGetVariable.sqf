/*
Returns a variable

Arguments :
0: Object with the variable [OBJECT]
1: Name of the variable [STRING]

Return :
Value of the Variable
Example:
[_this select 0,"adint_Name"] call adint_fnc_systemGetVariable;
*/
private ["_unit","_var","_return"];

_unit = _this select 0;
_var = _this select 1;

[_unit] call adint_fnc_systemIsInitialized;

_return = _unit getVariable _var;

_return;