/*
Force unit to raise his hands

Arguments :
0 : object with the attached action

Return :
-
*/
private ["_unit","_caller","_targets","_handle"];

_unit = _this select 0;
_caller = player;

if ([_unit,"adint_hasHandsUp"] call adint_fnc_systemGetVariable) then
{}
else
{
	_handle = [] call adint_fnc_systemPerform;
	if (_handle) then
		{
			[_unit] call adint_fnc_effectHandsUp;
		};
};
