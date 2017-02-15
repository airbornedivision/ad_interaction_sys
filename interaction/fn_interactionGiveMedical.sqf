/*
Arguments :
0: Object with attached Action

Return :
-
*/
private ["_unit"];

_unit = _this select 0;
_caller = player;

if ("ACE_personalAidKit" in magazines _caller) then
{
	_caller removeItem "ACE_personalAidKit";
	hint "Du hast Arzneimittel gegeben";
}
else
{
	hint "Du hast keine entsprechenden Items im Inventar.";
};