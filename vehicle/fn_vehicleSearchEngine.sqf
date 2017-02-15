/*
Adds Action entries to a class.

Arguments :
0 : classname of the object

Return :
-
*/
private ["_vehicle","_searchpos","_player","_vehicleinteractions"];

_vehicle = _this select 0;
_player = player;
/*
_vehicleinteractions = [_vehicle] call adint_fnc_vehicleType;

_searchpos = _vehicle getRelPos [(_vehicleinteractions select 0), 0];

if (_player distance _searchpos > 3) then
  {
    [("Du musst dich vor dem Fahrzeug befinden."),false,2,0] spawn ace_common_fnc_displayText;
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
