/*
Client init.
Waiting until player is spawned and ready to play.

Arguments :
-

Return :
-
*/
#include "\a3\editor_f\Data\Scripts\dikCodes.h"

waitUntil {!isNull player && player == player};
waitUntil {!(isNull (findDisplay 46))};

[] call adint_fnc_systemInitCivilians;

["Interaction System", "adint_KeyInstructionStop", ["Instruction 'Stop'", "Instruction for civilians to stop"], { _this call adint_fnc_callStop }, {}, [DIK_TAB, [false, false, false]]] call cba_fnc_addKeybind;