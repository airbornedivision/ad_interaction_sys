/*
Selects civilians from all units and class arrays and starts to add interactions to classes.

Arguments :
0: Object with attached variable

Return :
*/
private ["_unit"];

_unit = _this select 0;

if (isNil {_unit getVariable "adint_isinitialized"}) then
	{
		[_unit] call adint_fnc_systemSetData;
	}
	else
	{};