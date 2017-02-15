/*
Plays an animation

Arguments :
0: Object with the variable [OBJECT]
1: Name of the animation [STRING]
1: variable of the performed action [STRING]. Must be BOOL

Return :
BOOL
Example:
[_this select 0,"adint_Name"] call adint_fnc_systemGetVariable;
*/
private ["_f","_r","_escape","_return"];
_escape = false;
_f = 0;
_r = 0;

/*Überprüfen, ob der angeforderte Befehl ausgeführt wird anhand von vergleich _f mit _r. Wenn adint_kindness = 0 dann ist _f immer grösser als _r und somit wird immer true zurückgegeben*/

if (adint_escape != 1) then
		{
			_f = 1 - adint_escape;
			_r = random 1;
			if (_f > _r) then {_escape = false};
		}
		else
		{
			_escape = true;
		};

_return = _escape;

_return;
