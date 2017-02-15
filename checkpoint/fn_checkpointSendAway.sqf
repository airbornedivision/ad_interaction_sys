/*
Creates empty vehicle

Arguments :
0: [Object] Checkpoint position
1: [Object] Object with action menu entry
2:
3:

Return :
-
*/

private ["_checkpoint"];

_checkpoint = _this select 0;

while {true} do
{
	_checkpoint setVariable ["adcp_sendAway", false, true];
	waitUntil {_checkpoint getVariable "adcp_sendAway"};
	sleep 2;
	_checkpoint setVariable ["adcp_sendAway", false, true];
};