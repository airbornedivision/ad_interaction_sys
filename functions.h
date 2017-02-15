class CfgFunctions {

	class ADINT {

	tag = "adint";

		class player {
			file = "player";
		};

		class vehicle {
			file = "vehicle";
			class vehicleInit {};
			class vehicleAddActions {};
			class vehicleAddActionSearch {};
			class vehicleSearchUnderbody {};
			class vehicleSearchUnderbodyResult {};
			class vehicleSearchEngine {};
			class vehicleSearchEngineResult {};
			class vehicleSearchPassengerComp {};
			class vehicleSearchPassengerCompResult {};
			class vehicleSearchTrunk {};
			class vehicleSearchTrunkResult {};
			class vehicleSearchPerform {};
			class vehicleType {};
		};

		class effect {
			file = "effects";
			class effectHandsUp {};
			class effectPlayAnimation {};
			class effectIsDead {};
			class effectCancelAnimation {};
			class effectStop {};
			class effectGetDown {};
			class effectStance {};
			class effectDisableAi {};
			class effectEnableAi {};
			class effectPlayAction {};
			class effectAssasin {};
			class effectFlee {};
			class effectDoMove {};
			class effectArrest {};
		};

		class functions {
			file = "functions";
			class functionEnableAi {};
			class functionDoTarget {};
			class functionDoMove {};
			class functionRuntime {};
		};

		class objects {
			file = "objects";
		};

		class call {
			file = "call";
			class callStop {};
			class callHandsUp {};
		};

		class system {
			file = "system";
			class systemInit {};
			class systemTypeOf {};
			class systemAddActionInterview {};
			class systemAddActionInteraction {};
			class systemAddActionInstructions {};
			class systemInitCivilians {};
			class systemInitServer {};
			class systemInitClient {};
			class systemSetData {};
			class systemCheckData {};
			class systemSetVariable {};
			class systemIsInitialized {};
			class systemGetVariable {};
			class systemAddActions {};
			class systemNearestUnits {};
			class systemIsAlive {};
			class systemGetDistancePosition {};
			class systemPerform {};
			class systemPerformEscape {};
			class systemCheckEscape {};
			class systemSearchUnit {};
			class systemSearchForTarget {};
			class systemNearestTargets {};
			class systemResetVars {};
			class systemPerformSearch {};
			class systemNoNearestInstructor {};
		};

		class dialog {
			file = "dialog\functions";
		};

		class interaction {
			file = "interaction";
			class interactionSetFree {};
			class interactionSearch {};
			class interactionGiveFood {};
			class interactionGiveMedical {};
			class interactionArrest {};
			class interactionTransport {};
			class interactionRelease {};
		};

		class instruction {
			file = "instruction";
			class instructionHandsUp {};
			class instructionGetDown {};
			class instructionStop {};
			class instructionSendAway {};
		};

		class interview {
			file = "interview";
			class interviewName {};
			class interviewAge {};
			class interviewFood {};
			class interviewLocation {};
			class interviewMedical {};
			class interviewInformations {};
		};
	};

	class ADCP {

	tag = "adcp";
		class checkpoint {
			file = "checkpoint";
			class checkpointSpawnVehicle {};
			class checkpointSpawnCrew {};
			class checkpointSystemInit {};
			class checkpointSystemRandom {};
			class checkpointRandomValue {};
			class checkpointMoveToCheckpoint {};
			class checkpointSendAway {};
			class checkpointExitCheckpoint {};
			class checkpointPassAction {};
			};
		};
	};
