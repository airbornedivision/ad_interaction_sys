/*
Search unit

Arguments :
0: unit with the attached action

Return :
-
*/
private ["_unit"];

_unit = _this select 0;

if (([_unit,"adint_hasHandsUp"] call adint_fnc_systemGetVariable) || ([_unit,"adint_isArrested"] call adint_fnc_systemGetVariable)) then
	{
		[(15 + (random 10)), _unit, {[_this select 0] call adint_fnc_systemSearchUnit}, {[(localize "STR_TEXT_adint_searchCanceled"),false,2,0] spawn ace_common_fnc_displayText;}, ""] call ace_common_fnc_progressBar;
	}
	else
	{
		// TEXT HÄNDE HOCH ODER VERHAFTEN
		hint "Die Person muss die Haende hoch haben oder gefesselt sein.";
	};