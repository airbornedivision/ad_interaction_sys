/*
Force unit to stop

Arguments :
0 : object with the attached action

Return :
-
*/
private ["_unit","_caller","_civilian","_civilians","_targets","_handle"];

_targets = [_caller] call adint_fnc_systemSearchForTarget;

_caller = player;

[_caller,"gestureFreeze"] call adint_fnc_effectPlayAction;

{
	_handle = [] call adint_fnc_systemPerform;
	if (_handle) then
		{
			if ([_x,"adint_hasStopped"] call adint_fnc_systemGetVariable) then
			{}
			else
			{
				[_x,_caller] call adint_fnc_effectStop;
			};
		};
}foreach _targets;
