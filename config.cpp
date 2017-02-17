class CfgPatches {
	class ad_interaction_sys {
		units[] = {"adint_logic"};
		magazines[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Modules_F","CBA_Extended_EventHandlers","CBA_MAIN","ace_main"};
		author= "[101st.AD] Jay";
		authorUrl = "http://www.airborne-division.de";
		version = 1.0.3;
		versionStr = "1.0.3";
		versionAr[] = {1,0,3};
		versionDesc = "ADINT";
		versionAct = "";
	};
};

class CfgFactionClasses {
	class airborne_milsim_class;
	class airborne_milsim: airborne_milsim_class {
		displayName = "Airborne Division MilSim";
		priority = 10;
	};
};

class CfgVehicles {
	class Module_F;
    class adint_logic  : Module_F {
        displayName = "Civilian Interaction System";
        icon = "ad_interaction_sys\data\logo.paa";
        picture = "ad_interaction_sys\data\logo.paa";
		category = "airborne_milsim";
		priority = 1;
		scope = 2;
		author = "[101st.AD] Jay";
		class Eventhandlers {
			init = "[] execvm '\ad_interaction_sys\config.sqf';[] execvm '\ad_interaction_sys\system\fn_systemInit.sqf'";
        };
    };
};

#include "functions.h"
#include "adintVehicles.hpp"

/*
class CfgVehicles {

		class CAManBase;
		class Civilian: CAManBase {}; {

		class ACE_Actions {

			class ACE_MainActions {
				selection = "";
				distance = 5;
				condition = 1;

				class ADINT_NAME {
					selection = "";
					displayName = "Tell of what name you have";
					distance = 4;
					condition = "[_this select 0] call adint_fnc_systemIsAlive";
					statement = "[_this select 0] call adint_fnc_interactionName";
					showDisabled = 0;
					exceptions = {};
					priority = 5;
					icon = "";
				};
			};
		};
	};
};
