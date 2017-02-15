/*
Set unit data if not done yet.

Arguments :
0: Object with attached Action

Return :
-
*/
private ["_class"];
{
	_class = (typeof _x);
	if (_class iskindof "car") then
		{
			if ((_class) in adint_vehdefined) then
				{}
				else
				{
					[_class] call adint_fnc_vehicleAddActions;
					adint_vehdefined pushback _class;
				};
		}
		else
		{};
} foreach vehicles;

if (count adint_ext_vehclasses > 0) then
	{
		adint_vehclasses append adint_ext_vehclasses;
    {
    	if (_x in adint_vehdefined) then
    	{}
    	else
    	{
    		[_x] call adint_fnc_systemAddActions;
    	};
    } foreach adint_vehclasses;
	}
	else
	{};

_vehicles = vehicles;
waitUntil {(count _vehicles) != (count vehicles)};

[] call adint_fnc_vehicleInit;
