/*
Random value

Arguments :
0: [Number] Random value 0-100

Return :
BOOL
*/

private ["_input","_value","_r","_return"];

_input = _this select 0;
_value = round _input;

_return = false;
_r = floor random 100;

if (_r > _value) then
	{
		_return = true;
	}
	else
	{
		_return = false;
	};

_return;