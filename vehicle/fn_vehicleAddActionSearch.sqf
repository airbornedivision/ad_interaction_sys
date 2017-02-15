/*
Adds interaction menu to unit

Arguments :
0: select unit from "systemInitCivlians" = only civilian side

Return :
-
*/
private ["_class","_action"];

_class = _this select 0;

_action = ["ADINT_searchVehicle", "Search vehicle", "", {}, {[] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_searchVehicle", "Search trunk", "data\car_trunk.paa", {[(_this select 0)] call adint_fnc_vehicleSearchTrunk}, {true}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_searchVehicle"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_searchVehicle", "Search underbody", "data\car_underbody.paa", {[(_this select 0)] call adint_fnc_vehicleSearchUnderbody}, {true}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_searchVehicle"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_searchVehicle", "Search passenger compartment ", "data\car_passengercomp.paa", {[(_this select 0)] call adint_fnc_vehicleSearchPassengerComp}, {true}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_searchVehicle"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_searchVehicle", "Search engine compartment ", "data\car_engine.paa", {[(_this select 0)] call adint_fnc_vehicleSearchEngine}, {true}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_searchVehicle"], _action] call ace_interact_menu_fnc_addActionToClass;
