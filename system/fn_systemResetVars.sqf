/*
Alle Aktionsvariablen zuruecksetzen, sobald die Einheit freigelassen wird.

Arguments :
0: unit with the attached action

Return :
-
*/
private ["_unit"];

_unit = _this select 0;

[_unit,"adint_hasHandsUp",false,true] call adint_fnc_systemSetVariable;
[_unit,"adint_hasStopped",false,true] call adint_fnc_systemSetVariable;
[_unit,"adint_isArrested",false,true] call adint_fnc_systemSetVariable;
[_unit] call adint_fnc_effectCancelAnimation;