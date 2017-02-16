/*
Sucht nach einer Einheit durch Cursortarget oder in 25m Umkreis, falls kein Cursortarget erkannt wurde.
Bei fehlendem Cursortarget werden alle Einheiten im Umkreis angesprochen.
Arguments :
1: caller of the function

Return :
-
*/
private ["_civilian","_civilians","_return","_targets","_caller"];

_caller = player;
_targets = [];
_return = "";

if (!isnull cursorTarget) then {
		_civilian = cursorTarget;
	} else {
		_civilians = [_caller,25] call adint_fnc_systemNearestUnits;
	};
	
if ((isNil "_civilian") && (isNil "_civilians")) exitWith {};

if (!isNil "_civilian") then {
		_targets = [_civilian];
	}
	else {
		_targets = _civilians;
	};

_return = _targets;

_return;