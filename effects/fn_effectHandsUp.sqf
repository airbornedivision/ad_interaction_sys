/*
Zwingt die Einheit die Haende hochzunehmen.

Arguments :
0: unit with the attached action

Return :
-
*/
private ["_unit"];

_unit = _this select 0;

[_unit,"AmovPercMstpSnonWnonDnon_AmovPercMstpSsurWnonDnon","adint_hasHandsup"] call adint_fnc_effectPlayAnimation;
[_unit,"Move"] call adint_fnc_effectDisableAi;
[_unit,"Anim"] call adint_fnc_effectDisableAi;
[_unit,"AUTO"] call adint_fnc_effectStance;
[_unit,"adint_hasHandsup",true,true] call adint_fnc_systemSetVariable;

[_unit] spawn adint_fnc_systemCheckEscape;
