/*
Cancels animation if unit has hands up and died

Arguments :
0: unit with the attached action
1: variable of the performed action [STRING] Value of the variable must be BOOL

Return :
-
*/
private ["_unit","_var"];

_unit = _this select 0;
_var = _this select 1;
/*
waitUntil {((!alive _unit) || (!([_unit,_var] call adint_fnc_systemGetVariable)))};

if (!alive _unit) then
	{
		[_unit,"AidlPpneMstpSnonWnonDnon_SleepB_death"] call adint_fnc_effectPlayAnimation;
		[_unit,_var,false,true] call adint_fnc_systemSetVariable;
		[_unit,"Move"] call adint_fnc_effectEnableAi;
	}
	else
	{};