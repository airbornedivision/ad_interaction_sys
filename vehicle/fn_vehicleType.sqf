
/*
Adds Action entries to a class.

Arguments :
0 : classname of the object

Return :
-
*/
private ["_vehicle","_classname","_return","_positions"];

_vehicle = _this select 0;
_classname = typeof _vehicle;

{
if (_classname == _x select 0) exitWith {_return = _x select 1}; // Überprüfung ob Classname im Array, wenn ja dann Array mit Suchpositionen aus config.sqf zurückgeben
} foreach adint_vehicletypes;

if (count _return <= 0) then
  {
    _return = [5,2,5];
  };

_return;
