/*
Select random value from array.

Arguments :
0: [Array] input array

Return :
[String] Random classname from the array
*/

private ["_array","_r","_value","_return"];

_array = _this select 0;
_r = floor random (count _array);
_value = _array select _r;
_return = _value;

_return;