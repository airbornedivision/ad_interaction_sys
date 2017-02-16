/*
Durchsuchte Einheit zieht eine Waffe und feuert auf alle Einheiten im Nahbereich.

Arguments :
0: Searched person

Return :
-
*/
private ["_unit","_weapon","_targets","_victim","_x","_enemygroup"];

_unit = _this select 0;
_victim = objNull;
_targets = [];
_weapon = [];

if ([_unit,"adint_isArrested"] call adint_fnc_systemGetVariable) then {
		// WAFFE GEFUNDEN WAFFE DROPPEN UND INFOTEXT // TODO WAFFE DROPPEN
		hint "waffe gefunden";
	} else {
		[_unit] call adint_fnc_systemResetVars;

		// Waffe aus Pool auswaehlen und mit Munition zuweisen.
		_weapon = adint_weapons select (floor (random count adint_weapons));
		_unit addMagazineGlobal (_weapon select 1);
		_unit addWeaponGlobal (_weapon select 0);

		// Einheit einer EAST Fraktion zuweisen, um negativen Score zu verhindern. Ziele suchen und bekaempfen.
		_enemygroup = createGroup east;
		[_unit] join _enemygroup;
		_targets = [_unit] call adint_fnc_systemNearestTargets;

		// Zwingt die Einheit auch ohne fixes Ziel zu feuern. Falls Einheit nicht bekaempft wurde flieht sie im anschluss.
		for [{_x=1},{_x<=(6 + (round random 3))},{_x=_x+1}] do
			{
				_victim = _targets select (floor (random (count _targets)));
				[[_unit,_victim], "adint_fnc_functionDoTarget",true] call BIS_fnc_MP;
				sleep 1.3;
				[[ _unit,[(_weapon select 0), "Single"]],"forceWeaponFire",true] call BIS_fnc_MP;
				sleep 0.3;
				[[ _unit,[(_weapon select 0), "Single"]],"forceWeaponFire",true] call BIS_fnc_MP;
				_targets = [_unit] call adint_fnc_systemNearestTargets;
			};
		[_unit] call adint_fnc_effectFlee;
	};
