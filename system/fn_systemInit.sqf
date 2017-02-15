/*
Starts the interaction system

Arguments :
-

Return :
-
*/
waitUntil {!isNil "BIS_fnc_init"};

if (!hasInterface) then
	{
		[] call adint_fnc_systemInitServer;
	}
	else
	{
		[] call adint_fnc_systemInitClient;
	};
