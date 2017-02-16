/*
Selects civilians from all units and class arrays and starts to add interactions to classes.

Arguments :
-

Return :
-
*/

// Allen bereits platzierten Einheiten werden die ACE Actions hinzugefuegt.
private ["_class"];
{
	_class = (typeof _x);
	if ((side _x) == civilian) the {
			if ((_class) in adint_defined) then {

			} else {
					[_class] call adint_fnc_systemAddActions;
					adint_defined pushback _class;
				};
		} else {
	};
} foreach allunits;

// Allen externen Klassen die ACE Actions zuweisen, falls diese zu Missionsbeginn nicht existieren und ggf. nachgespawnt werden.
if (count adint_ext_classes > 0) then {
		adint_defined append adint_ext_classes; {
			if (_x in adint_defined) then {
				
			} else {
				[_x] call adint_fnc_systemAddActions;
			};
		} foreach adint_classes;
	} else {	
};
