/*
Arguments :
0: Object with attached Action

Return :
-
*/
private ["_unit","_text"];

_unit = _this select 0;

_text = [_this select 0,"adint_location"] call adint_fnc_systemGetVariable;

_text = Format [(localize "STR_TEXT_adint_location"),_text];
[_text,false,4,0] spawn ace_common_fnc_displayText;