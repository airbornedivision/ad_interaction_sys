/*
Arguments :
0: Object with attached Action

Return :
-
*/
private ["_unit"];

_unit = _this select 0;
_caller = player;

if ("adint_carepackage" in magazines _caller) then {
	_caller removeMagazine "adint_carepackage";
	hint "Du hast ein Nahrungsmittelpaket gegeben";
} else {
	hint "Du hast keine entsprechenden Items im Inventar.";
};