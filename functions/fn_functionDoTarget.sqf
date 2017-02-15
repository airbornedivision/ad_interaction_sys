private ["_unit","_victim"];

_unit = _this select 0;
_victim = _this select 1;
_unit doTarget _victim;