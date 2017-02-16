/*
Fuegt Instruktions Aktionen hinzu

Arguments :
0: select unit from "systemInitCivlians" = only civilian side

Return :
-
*/
private ["_class","_action"];

_class = _this select 0;

_action = ["ADINT_Instructions", "Instructions", "", {}, {[] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_Instructions", "Stop", "", {[(_this select 0)] call adint_fnc_instructionStop}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Instructions"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_Instructions", "Hands up", "", {[(_this select 0)] call adint_fnc_instructionHandsUp}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Instructions"], _action] call ace_interact_menu_fnc_addActionToClass;

/* Momentan nicht verwendet, das ACE eingene vorhanden. Ggf Aktionen ueber Hotkeys belegen.
_action = ["ADINT_Instructions", "Go away", "", {[(_this select 0)] call adint_fnc_instructionSendAway}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Instructions"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_Instructions", "Get down", "", {[(_this select 0)] call adint_fnc_instructionGetDown}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Instructions"], _action] call ace_interact_menu_fnc_addActionToClass;
*/
