/*
Force unit to stop

Arguments :
0 : object with the attached action

Return :
-
*/
private ["_unit","_caller","_targets","_handle"];

_unit = _this select 0;
_caller = player;

[_caller,"gestureFreeze"] call adint_fnc_effectPlayAction;

if ([_unit,"adint_hasStopped"] call adint_fnc_systemGetVariable) then {

} else {
	_targets = [_caller] call adint_fnc_systemSearchForTarget;
	{
		_handle = [] call adint_fnc_systemPerform;
		if (_handle) then {
				[_x,_caller] call adint_fnc_effectStop;
			};
	}foreach _targets;
};
