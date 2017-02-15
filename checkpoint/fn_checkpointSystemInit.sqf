/*
Initialisation of the checkpoint system

Arguments :
0:
1:
2:
3:

Return :
-
*/
if (isServer) then {
_HQCiv = createCenter civilian;
private ["_checkpoint","_spawn","_button","_exit","_count","_delay","_armed","_suicide","_armedchance","_suicidechance","_vehicle","_driver"];

_checkpoint = _this select 0;
_spawn = _this select 1;
_button = _this select 2;
_exit = _this select 3;

_count = param [4, 0, [0]];
_delay = param [5, 240, [0]];
_armed = param [6, true, [true]];
_suicide = param [7, false, [true]];
_armedchance = param [8, 15, [0]];
_suicidechance = param [9, 20, [0]];

[_checkpoint] spawn adcp_fnc_checkpointSendAway;

[{checkpoint_pass addaction ["Durchfahren lassen",{checkpoint setVariable ["adcp_sendAway", true, true]}]},"BIS_fnc_spawn",true,false] call BIS_fnc_MP;

if (_count == 0) then
	{
		_count = 100000;
	};

for [{_i=0},{_i<=_count},{_i=_i+1}] do
	{
		sleep _delay;

		_vehicle = [[adcp_vehicleArray] call adcp_fnc_checkpointRandomValue,_spawn] call adcp_fnc_checkpointSpawnVehicle;
		sleep 0.5;
		_driver = [[adcp_crewArray] call adcp_fnc_checkpointRandomValue,_spawn] call adcp_fnc_checkpointSpawnCrew;
		sleep 0.5;
		_driver moveInDriver _vehicle;
		_driver setSpeedMode "NORMAL";
		sleep 0.5;
		for [{_k=0},{_k<=(floor random 1)},{_k=_k+1}] do
		{
			_crew = [[adcp_crewArray] call adcp_fnc_checkpointRandomValue,_spawn] call adcp_fnc_checkpointSpawnCrew;
			sleep 0.5;
			_crew moveInCargo _vehicle;
		};
		[_driver,_checkpoint,_exit] spawn adcp_fnc_checkpointMoveToCheckpoint;
	};
};
