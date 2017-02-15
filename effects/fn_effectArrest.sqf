/*
Forces Unit to put his hands up

Arguments :
0: unit with the attached action

Return :
-
*/
private ["_unit","_caller"];

_unit = _this select 0;
_caller = player;

if ("ACE_CableTie" in items _caller) then
{
	[_unit,"InBaseMoves_HandsBehindBack1","adint_isArrested"] call adint_fnc_effectPlayAnimation;
	[_unit,"Move"] call adint_fnc_effectDisableAi;
	[_unit,"Anim"] call adint_fnc_effectDisableAi;
	[_unit,"AUTO"] call adint_fnc_effectStance;
	[_unit,"adint_isArrested",true,true] call adint_fnc_systemSetVariable;
	_caller removeItem "ACE_CableTie";
}
else
{
	hint "Du brauchst Kabelbinder";
}
