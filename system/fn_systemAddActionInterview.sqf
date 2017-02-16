/*
Fuegt Interview Aktionen hinzu

Arguments :
0: select unit from "systemInitCivlians" = only civilian side

Return :
-
*/
private ["_class","_action"];

_class = _this select 0;

_action = ["ADINT_Interview", "Interview", "", {}, {[] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_Interview", "Name", "", {[(_this select 0)] call adint_fnc_interviewName}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Interview"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_Interview", "Age", "", {[(_this select 0)] call adint_fnc_interviewAge}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Interview"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_Interview", "Location", "", {[(_this select 0)] call adint_fnc_interviewLocation}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Interview"], _action] call ace_interact_menu_fnc_addActionToClass;
/*
_action = ["ADINT_Interview", "Medical", "", {[(_this select 0)] call adint_fnc_interviewMedical}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Interview"], _action] call ace_interact_menu_fnc_addActionToClass;

_action = ["ADINT_Interview", "Food", "", {[(_this select 0)] call adint_fnc_interviewFood}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Interview"], _action] call ace_interact_menu_fnc_addActionToClass;
*/
_action = ["ADINT_Interview", "Informations", "", {[(_this select 0)] call adint_fnc_interviewInformations}, {[_this select 0] call adint_fnc_systemIsAlive}] call ace_interact_menu_fnc_createAction;
[_class, 0, ["ACE_MainActions","ADINT_Interview"], _action] call ace_interact_menu_fnc_addActionToClass;
