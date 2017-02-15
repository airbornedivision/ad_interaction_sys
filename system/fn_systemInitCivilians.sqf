/*
Selects civilians from all units and class arrays and starts to add interactions to classes.

Arguments :
-

Return :
-
*/
private ["_class"];
{
	_class = (typeof _x);
	if ((side _x) == civilian) then
		{
			if ((_class) in adint_defined) then
				{}
				else
				{
					[_class] call adint_fnc_systemAddActions;
					adint_defined pushback _class;
				};
		}
		else
		{};
} foreach allunits;

if (count adint_ext_classes > 0) then
	{
		adint_classes append adint_ext_classes;
		{
			if (_x in adint_defined) then
			{}
			else
			{
				[_x] call adint_fnc_systemAddActions;
			};
		} foreach adint_classes;
	}
	else
	{};
