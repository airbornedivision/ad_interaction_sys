/*
Arguments :
0: Object with attached Action
1: String of the Action name
2: Function name
3: Class of the object the action is assigned to

Return :
-
*/
private ["_string","_function","_class","_action"];

_string = _this select 0;
_class = _this select 1;
_function = "";

call compile format ["_function = ""adint_fnc_interaction%1""",_string];

_action = ["ADINT_Interview_execute", _string, "", {[_this select 0] call adint_fnc_interactionName}, {true}] call ace_interact_menu_fnc_createAction;
[typeof _class, 0, ["ACE_MainActions","ADINT_Interview"], _action] call ace_interact_menu_fnc_addActionToClass;