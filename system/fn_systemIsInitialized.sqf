/*
Prueft ob Einheit bereits initialisiert wurde und fuehrt ggf. die Initialisierung aus.

Arguments :
0: Object with attached variable

Return :
*/
private ["_unit"];

_unit = _this select 0;

if (isNil {_unit getVariable "adint_isinitialized"}) then {
		[_unit] call adint_fnc_systemSetData;
	} else {

};