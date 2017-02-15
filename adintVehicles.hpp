class ACE_Module;
class ACE_ModuleInteraction;

class CfgVehicles {

  class Man;
      class CAManBase: Man {
          class ACE_Actions {
              class ACE_MainActions {
                  displayName = CSTRING(MainAction);
                  distance = 4;
                  condition = QUOTE(true);
                  statement = "";
                  icon = "\a3\ui_f\data\IGUI\Cfg\Actions\eject_ca.paa";
                  selection = "pelvis";

                  class ACE_GetDown {
                  displayName = CSTRING(GetDown);
                  condition = "false";
                  statement = QUOTE([ARR_2(_player,_target)] call DFUNC(getDown));
                  showDisabled = 0;
                  priority = 2.2;
                  };

                  class ACE_SendAway {
                  displayName = CSTRING(SendAway);
                  condition = "false";
                  statement = QUOTE([ARR_2(_player,_target)] call DFUNC(sendAway));
                  showDisabled = 0;
                  priority = 2.0;
                  };

                  class ACE_ApplyHandcuffs {
                  displayName = CSTRING(SetCaptive);
                  selection = "righthand";
                  distance = 2;
                  condition = "false";
                  statement = QUOTE([ARR_2(_player, _target)] call FUNC(doApplyHandcuffs));
                  exceptions[] = {};
                  icon = QUOTE(PATHTOF(UI\handcuff_ca.paa));
                  };
              };
          };
      };

  class LandVehicle;
    class Car: LandVehicle {
        class ACE_Actions {
            class ACE_MainActions {
                displayName = "ADINT ACTION";
                selection = "motor";
                distance = 10;
                condition = "true";
                class ACE_Passengers
                {
                    displayName = "Durchsuchen";
                    condition = "true";
                    statement = "";
                };
                class ACE_LampTurnOn
                {
                    displayName = "ADINT 2";
                    condition = "true";
                    statement = "";
                    selection = "";
                    distance = 10;
                };
                class ACE_LampTurnOff
                {
                    displayName = "ADINT 3";
                    condition = "";
                    statement = "";
                    selection = "";
                    distance = 10;
                };
            };
        };
    };
};
