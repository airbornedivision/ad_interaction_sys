/*
Force unit to get Down

Arguments :
0 : object with the attached action

Return :
-
*/
private ["_unit","_caller","_civilian","_civilians","_targets","_handle"];

_unit = _this select 0;
_caller = player;

[_caller,"gestureFreeze"] call adint_fnc_effectPlayAction;

if ([_unit,"adint_hasStopped"] call adint_fnc_systemGetVariable) exitWith {
	
};

_handle = [] call adint_fnc_systemPerform;
if (_handle) then{
	[_unit,_caller] call adint_fnc_effectGetDown;
};