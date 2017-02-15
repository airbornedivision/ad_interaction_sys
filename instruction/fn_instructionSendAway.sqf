/*
Sends unit away

Arguments :
0: unit with the attached action
1: caller of the order

Return :
-
*/
private ["_unit","_position","_caller"];

_unit = _this select 0;
_caller = player;

if ([_unit,"adint_isArrested"] call adint_fnc_systemGetVariable) exitWith {hint "Du musst die Person erst befreien."};

[_caller,"GestureGo"] call adint_fnc_effectPlayAction;

_handle = [] call adint_fnc_systemPerform;

if (_handle) then
	{
		[_unit] call adint_fnc_interactionSetFree;
		_position = [_unit,_caller] call adint_fnc_systemGetDistancePosition;
		[_unit,_position] call adint_fnc_effectDoMove;
	};