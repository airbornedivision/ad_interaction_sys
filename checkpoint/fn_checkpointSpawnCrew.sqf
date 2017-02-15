/*
Creates empty vehicle

Arguments :
0:
1:
2:
3:

Return :
-
*/

private ["_unit","_spawn","_classname","_return","_grpciv"];

_classname = _this select 0;
_spawn = _this select 1;
_classname createUnit [getpos _spawn, createGroup civilian,"adcpigor=this", 0.6, "corporal"];
//_classname createUnit [getpos _spawn,createGroup civilian,"igor = this"];
//_grpciv = createGroup civilian;

//_unit = _grpciv createUnit [_classname, getpos _spawn, [], 0, "NONE"];
//_unit setName 'igor';
//_unit setName 'igor';
_unit = adcpigor;
_return = _unit;

_return;
