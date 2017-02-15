/*
Adds interaction menu to unit

Arguments :
0: select unit from "systemInitCivlians" = only civilian side

Return :
-
*/
private ["_class","_action"];

_class = _this select 0;

_action = ["ADINT_Interaction", "Interaction", "", {}, {[] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToClass;
/*
_action = ["ADINT_Interaction", "Give medical", "", {[(_this select 0)] call adint_fnc_interactionGiveMedical}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Interaction"], _action] call ace_interact_menu_fnc_addActionToClass;
*//*
_action = ["ADINT_Interaction", "Give food", "", {[(_this select 0)] call adint_fnc_interactionGiveFood}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Interaction"], _action] call ace_interact_menu_fnc_addActionToClass;
*/
_action = ["ADINT_Interaction", "Search", "", {[(_this select 0)] call adint_fnc_interactionSearch}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Interaction"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_Interaction", "Arrest", "", {[(_this select 0)] call adint_fnc_interactionArrest}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Interaction"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_Interaction", "Free", "", {[(_this select 0)] call adint_fnc_interactionSetFree}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Interaction"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_Interaction", "Transport", "", {[(_this select 0)] call adint_fnc_interactionTransport}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Interaction"], _action] call ace_interact_menu_fnc_addActionToClass;
/*
_action = ["ADINT_Interaction", "Release", "", {[(_this select 0)] call adint_fnc_interactionRelease}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Interaction"], _action] call ace_interact_menu_fnc_addActionToClass;
