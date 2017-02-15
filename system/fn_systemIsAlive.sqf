/*
Arguments :
0: Object with attached Action

Return :
-
*/
private ["_civ","_return"];

_civ = _this select 0;

if (alive _civ) then
	{
		_return = true;
	}
	else
	{
		_return = false;
	};
	
_return;