/*
Pruefen ob Fluchtbedindungen erfuellt sind und anschliessende Flucht.
Arguments :

Return :
-
*/
private ["_unit","_radius","_handle"];

_unit = _this select 0;
_radius = 50;

while {true} do
	{
		sleep 5;
		if (!(alive _unit)) exitWith {};
		if (!([_unit,"adint_hasHandsUp"] call adint_fnc_systemGetVariable) && !([_unit,"adint_hasStopped"] call adint_fnc_systemGetVariable)) exitWith {};
		if ([_unit,"adint_isArrested"] call adint_fnc_systemGetVariable) exitwith {hint "arrest"};
// Überprüft ob sich noch Einheiten von West,East oder Ind in der Nähe befinden. Wenn nein dann weitergehen
		if ([_unit] call adint_fnc_systemNoNearestInstructor) exitWith {
				[_unit] call adint_fnc_interactionSetFree;
			};

// Zufällige Flucht des Gefangenen ahnand der "adint_escape" Variable 0 = keine Flucht ; 1 = Flucht
		_handle = [] call adint_fnc_systemPerformEscape;
		if (_handle) then {
				[_unit] call adint_fnc_effectFlee;
			};
	};

/* Älterer Ansatz -- Ignorieren
	/*
	Checks for units near the capitve and if no units nearby releases unit depended on the kindness factor

	Arguments :
	0: unit with the attached action
	1: variable of the performed action [STRING] Value of the variable must be BOOL

	Return :
	-

	private ["_unit","_radius","_cycles","_handle"];

	_unit = _this select 0;
	_radius = 50;
	_cycles = adint_excapecycles;

	hint "escape init";

	for [{_i=1},{_i<=_cycles},{_i=_i+1}] do
		{
			hint format ["%1 for escape",_i];
			sleep 15;
			if (!(alive _unit)) exitWith {};
			if (!([_unit,"adint_hasHandsUp"] call adint_fnc_systemGetVariable)) exitWith {};

	// Überprüft ob sich noch Einheiten von West,East oder Ind in der Nähe befinden. Wenn nein dann Flucht
			if ([_unit] call adint_fnc_systemNoNearestInstructor) exitWith
				{
					hint "escape in for";
					[_unit] call adint_fnc_effectFlee;
				};

	// Zufällige Flucht des Gefangenen ahnand der "adint_escape" Variable
			_handle = [] call adint_fnc_systemPerformEscape;
			if (_handle) then
				{
					hint "zufallsflucht";
					[_unit] call adint_fnc_effectFlee;
				};
		};

	hint "for exit";

	// Nach Ende der For Schleife auf jeden fall
	if ([_unit,"adint_hasHandsUp"] call adint_fnc_systemGetVariable) then
		{
			hint "escape exit for";
			[_unit] call adint_fnc_effectFlee;
		};
