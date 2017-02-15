/*
Creates empty vehicle

Arguments :
0: [Object] Driver of the vehicle
1: [Object] Position of the checkpoint
2: [Object] Despawn position
3:

Return :
-
*/

private ["_driver","_checkpoint","_position"];

_driver = _this select 0;
_checkpoint = _this select 1;
_exit = _this select 2;

_position = getpos _checkpoint;

_driver domove _position;
waitUntil {(_driver distance _checkpoint < 15) && (_checkpoint getVariable "adcp_sendAway")};

[_driver,_exit] call adcp_fnc_checkpointExitCheckpoint;
