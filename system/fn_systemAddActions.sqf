/*
Adds Action entries to a class.

Arguments :
0 : classname of the object

Return :
-
*/
private ["_class"];

_class = _this select 0;

[_class] call adint_fnc_systemAddActionInterview;
[_class] call adint_fnc_systemAddActionInteraction;
[_class] call adint_fnc_systemAddActionInstructions;