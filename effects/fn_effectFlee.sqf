/*
Flucht an Zufallsposition im Umkreis von 300-600m.

Arguments :
0: Searched person

Return :
-
*/
private ["_unit","_xpos","_ypos","_zpos","_newpos","_position"];

_unit = _this select 0;

[_unit] call adint_fnc_systemResetVars;
[_unit,"MOVE"] call adint_fnc_effectEnableAi;
[_unit,"Anim"] call adint_fnc_effectEnableAi;

_position = getpos _unit;

_xpos = _position select 0;
_ypos = _position select 1;
_zpos = _position select 2;

_xpos = _xpos + (300 + (random 300));
_ypos = _ypos + (300 + (random 300));

_newpos = [_xpos,_ypos,_zpos];

[_unit,_newpos] call adint_fnc_effectDoMove;
