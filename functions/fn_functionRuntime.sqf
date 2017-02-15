/*
laufzeitabfrage für Exitbedingungen

Arguments :
0 : Endtime. Laufzeit der Funktion bis ein "true" zurückgegeben wird.
[500] call adint_fnc_functionTime

Return :
BOOL
*/
private ["_runtime","_endtime"];

_runtime = _this select 1;
_endtime = time + _runtime;
_return = false;

waitUntil {_endtime < time};

_return = true;

_return;


[{  }, 5, ["balls"] ] call CBA_fnc_addPerFrameHandler;
