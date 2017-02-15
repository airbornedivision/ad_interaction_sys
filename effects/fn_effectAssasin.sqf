/*
Searched person attacks all units around him.

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

if ([_unit,"adint_isArrested"] call adint_fnc_systemGetVariable) then
	{
		// WAFFE GEFUNDEN WAFFE DROPPEN UND INFOTEXT
		hint "waffe gefunden";
	}
	else
	{
		[_unit] call adint_fnc_systemResetVars;
		_weapon = adint_weapons select (floor (random count adint_weapons));

		_unit addMagazineGlobal (_weapon select 1);
		_unit addWeaponGlobal (_weapon select 0);

		_enemygroup = createGroup east;
		[_unit] join _enemygroup;
		_targets = [_unit] call adint_fnc_systemNearestTargets;

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
