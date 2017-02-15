/*
Reaction of unit after checking inventory

Arguments :
0: Object with the variable [OBJECT]
1: Name of the animation [STRING]
1: variable of the performed action [STRING]. Must be BOOL

Return :
BOOL
Example:
[_this select 0,"adint_Name"] call adint_fnc_systemGetVariable;
*/
private ["_f","_r","_instruction","_return"];
_instruction = false;
_f = 0;
_r = 0;

if (adint_searchresult != 1) then
		{
			_f = 1 - adint_searchresult;
			_r = random 1;
			if (_f > _r) then {_instruction = true};
		};

_return = _instruction;

_return;