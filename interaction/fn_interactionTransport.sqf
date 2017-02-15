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

if ([_unit,"adint_isArrested"] call adint_fnc_systemGetVariable) then
{
	_unit attachTo [_caller, [0, 1, 0]]; 
	_unit addAction ["Release Person", {[this] call adint_fnc_interactionRelease}];
}
else
{
	hint "Du musst die Person erst verhaften."
};


