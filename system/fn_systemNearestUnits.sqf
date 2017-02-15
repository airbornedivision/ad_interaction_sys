/*
Searched for civilians near the player

Arguments :
0: unit with the attached action
1: unit that called the action

Return :
Array with all civilians closer than 25m
*/

private ["_caller","_return","_array","_nearest","_radius"];

_caller = _this select 0;
_radius = _this select 1;
_array = [];

_nearest = nearestObjects [_caller, ["Man"], _radius];

{
if (side _x == civilian) then
	{
		_array = _array + [_x];
	};
} foreach _nearest;

_return = _array;

_return;