/*
Set unit data if not done yet.

Arguments :
0: Object with attached Action

Return :
-
*/
private ["_unit","_location","_age","_name","_informations"];

_unit = _this select 0;
_age = 0;
_name = "";
_location = "";
_informations = 0;

//Set location variable
//adint_location = string
if (isNil {_unit getVariable "adint_isinitialized"}) then {
	if (isNil {_unit getvariable "adint_location"}) then {
			_location = text(nearestLocations [ position _unit, ["nameCity","NameVillage","NameLocal"], 10000] select floor(round random 2));
			[_unit,"adint_location",_location,true] call adint_fnc_systemSetVariable;
		} else {

	};

	//Set age variable
	//adint_age = Number
	if (isNil {_unit getVariable "adint_age"}) then {
			_age = 20 + round(random 40);
			[_unit,"adint_age",_age,true] call adint_fnc_systemSetVariable;
		} else {

	};

	//Set name variable
	//adint_name = string
	if (isNil {_unit getVariable "adint_name"}) then {
			_name = name _unit;
			[_unit,"adint_name",_name,true] call adint_fnc_systemSetVariable;
		} else {

	};

	//Set informations variable // number is set and text from config.sqf selected by number
	//adint_informations = number
	if (isNil {_unit getVariable "adint_informations"}) then {
			_informations = (floor random(count adint_informations));
			[_unit,"adint_informations",_informations,true] call adint_fnc_systemSetVariable;
		} else {

	};
		
	if (isNil {_unit getVariable "adint_hasHandsUp"}) then {
			[_unit,"adint_hasHandsUp",false,true] call adint_fnc_systemSetVariable;
		};
	if (isNil {_unit getVariable "adint_hasStopped"}) then {
			[_unit,"adint_hasStopped",false,true] call adint_fnc_systemSetVariable;
		};
	if (isNil {_unit getVariable "adint_isArrested"}) then {
			[_unit,"adint_isArrested",false,true] call adint_fnc_systemSetVariable;
		};
	if (isNil {_unit getVariable "adint_isFriendly"}) then {
			[_unit,"adint_isFriendly",false,true] call adint_fnc_systemSetVariable;
		};

	[_unit,"adint_isinitialized",true,true] call adint_fnc_systemSetVariable;
	} else {

};
