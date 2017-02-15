[] execvm "config.sqf";
[] spawn adint_fnc_systemInit;
//[] spawn adint_fnc_vehicleInit;
[] spawn adcp_fnc_checkpointPassAction;


[checkpoint,checkpoint_spawn,checkpoint_pass,checkpoint_exit,0,90,true,false,20,15] spawn adcp_fnc_checkpointSystemInit;


/*
Parameters
0 - checkpoint : [Object] Position of the checkpoint on the map. Position for vehicle stop.
1 - checkpoint_spawn : [Object] Spawnposition for vehicles and AI.
2 - checkpoint_pass : [Object] Interaction for the checkpoint crew to allow a vehicle to pass.
3 - checkpoint_exit : [Object] Position for vehicle and AI delete.
4 - 0 : Optional [Number] Number of vehicles created to pass the checkpoint. 0 = infinite. Default value : 0
5 - 60 : Optional [Number] Time between vehicle spawn. Default value : 240
6 - true : Optional [Bool] Armed vehiclecrews Default value : true
7 - true : Optional [Bool] Suicide Bomber : Default value : false
8 - 15 : Optional [Number] Chance for assault : Default value : 20
9 - 15 : Optional [Number] Chance for bomber : Default value : 15
/*
