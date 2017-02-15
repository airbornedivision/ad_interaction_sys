/*
Searched for instructors (east,ind,west) within a radius of 25m near the stopped unit

Arguments :
0: unit with the attached action
1: unit that called the action

Return :
false if no unit is closer than 25m
*/

private ["_caller","_return","_nearest","_radius"];

_caller = _this select 0;
_radius = 15;
_return = true;

_nearest = nearestObjects [_caller, ["Man"], _radius];

{
if (side _x != civilian) exitWith
	{
		_return = false;
	};
} foreach _nearest;

_return;
