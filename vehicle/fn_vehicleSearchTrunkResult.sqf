/*
Adds Action entries to a class.

Arguments :
0 : classname of the object

Return :
-
*/
private ["_vehicle","_drop","_player","_spawnpos"];

_vehicle = _this select 0;
_spawnpos = _this select 1;
_player = player;

if ([_unit,"adint_vehClear"] call adint_fnc_systemGetVariable) then
  {
      [("Du hast nichts gefunden"),false,2,0] spawn ace_common_fnc_displayText;
  }
  else
  {
      [("Du hast nichts gefunden"),false,2,0] spawn ace_common_fnc_displayText;
  };
