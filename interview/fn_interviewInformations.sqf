/*
Arguments :
0: Object with attached Action

Return :
-
*/
private ["_unit","_text","_value"];

_unit = _this select 0;

if (isNil {_this select 0 getVariable "adint_custom_informations"}) then
	{
		_value = [_this select 0,"adint_informations"] call adint_fnc_systemGetVariable;

		_text = adint_informations select _value;

		_text = Format [(localize "STR_TEXT_adint_informations"),_text];
		[_text,false,4,0] spawn ace_common_fnc_displayText;
	}
	else
	{
		_text = [_this select 0,"adint_custom_informations"] call adint_fnc_systemGetVariable;
		[_text,false,4,0] spawn ace_common_fnc_displayText;
	};