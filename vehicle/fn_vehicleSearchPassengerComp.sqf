/*
Adds Action entries to a class.

Arguments :
0 : classname of the object

Return :
-
*/
private ["_vehicle","_searchposL","_searchposR","_player","_vehicleinteractions"];

_vehicle = _this select 0;
_player = player;
/*
_vehicleinteractions = [_vehicle] call adint_fnc_vehicleType;

_searchposL = _vehicle getRelPos [-(_vehicleinteractions select 1), 0];
_searchposR = _vehicle getRelPos [(_vehicleinteractions select 1), 0];


if ((_player distance _searchposL > 3) || (_player distance _searchposR > 3)) then
  {
    [("Du musst dich neben dem Fahrzeug befinden."),false,2,0] spawn ace_common_fnc_displayText;
  }
  else
  {
    [(15 + (random 10)), _vehicle,{[_this select 0,getpos _player] call adint_vehicleSearchEngineResult}, {[(localize "STR_TEXT_adint_searchCanceled"),false,2,0] spawn ace_common_fnc_displayText;}, "Searching engine compartment"] call ace_common_fnc_progressBar;
  };
*/
if (_player distance _vehicle > 5) then
  {}
  else
  {
  [(15 + (random 10)), _vehicle,{[_this select 0,getpos _player] call adint_vehicleSearchEngineResult}, {[(localize "STR_TEXT_adint_searchCanceled"),false,2,0] spawn ace_common_fnc_displayText;}, "Searching engine compartment"] call ace_common_fnc_progressBar;
};
