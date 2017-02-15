/*
Sends unit away

Arguments :
0: unit with the attached action
1: caller of the order

Return :
-
*/
private ["_unit","_handle"];

_unit = _this select 0;

_handle = [] call adint_fnc_systemPerformSearch;

if (_handle) then
	{
		[(localize "STR_TEXT_adint_searchIsClear"),false,2,0] spawn ace_common_fnc_displayText;
	}
	else
	{
		if ([_unit,"adint_isFriendly"] call adint_fnc_systemGetVariable) then
			{}
			else
			{
				switch (floor (random 10)) do
					{
						case 1: { [_unit] spawn adint_fnc_effectAssasin };
						case 2: { [_unit] call adint_fnc_effectFlee; };
						case 3: { [_unit] call adint_fnc_effectFlee; };
						case 4: { [_unit] call adint_fnc_effectFlee; };
						case 5: { [_unit] call adint_fnc_effectFlee; };
						case 6: { [_unit] spawn adint_fnc_effectAssasin; };
						case 7: { [_unit] call adint_fnc_effectFlee; };
						case 8: { [_unit] call adint_fnc_effectFlee; };
						case 9: { [_unit] call adint_fnc_effectFlee; };
						case 10: { [_unit] call adint_fnc_effectFlee; };
						default {};
					};
			};
	};
