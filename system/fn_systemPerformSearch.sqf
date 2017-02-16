/*
Ergebnis fuer Durchsuchung anhand von adint_searchresult berechnen.

Arguments :
0: Object with the variable [OBJECT]
1: Name of the animation [STRING]
1: variable of the performed action [STRING]. Must be BOOL

Return :
BOOL
Example:
[_this select 0,"adint_Name"] call adint_fnc_systemGetVariable;
*/
private ["_f","_r","_result","_return"];
_result = false;
_f = 0;
_r = 0;

if (adint_searchresult != 1) then {
			_f = 1 - adint_searchresult;
			_r = random 1;
			if (_f > _r) then {_result = true};
		};

_return = _result;

_return;