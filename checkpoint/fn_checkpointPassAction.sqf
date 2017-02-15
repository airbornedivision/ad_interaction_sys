/*
Creates empty vehicle

Arguments :
0:
1:
2:
3:

Return :
-
*/

adcp_actions = ['ADCP_Action','Drive on',"",{checkpoint setVariable ["adcp_sendAway", true, true]},{player distance checkpoint < 10}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], adcp_actions] call ace_interact_menu_fnc_addActionToObject;
