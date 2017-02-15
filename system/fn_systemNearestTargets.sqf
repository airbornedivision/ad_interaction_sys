/*
Searched for unit near the searched person

Arguments :
0: unit with the attached action
1: unit that called the action

Return :
Array with all civilians closer than 25m
*/

private ["_unit","_return","_array","_nearest","_radius"];

_unit = _this select 0;
_array = [];

_nearest = nearestObjects [_unit, ["Man"], 50];

{
if ((side _x == west) || (side _x == east) || (side _x == civilian)) then
	{
		_array = _array + [_x];
	};
} foreach _nearest;

_return = _array;

_return;