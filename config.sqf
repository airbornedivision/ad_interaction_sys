/*
Arguments :
Config

Return :
-
*/

// Variables for Informations
// Answers for Informations

// Beide Arrays muessen gleich groß sein, damit bei Sprachunterschieden keine unterschiedlichen bzw. keine Antwort erscheint.
// Bei ungleicher groesse Fehlermeldung.

adint_informations =
          [
            "I have no informations for you.",
            "Leave me alone.",
            "I don't talk to you.",
            "Go away !",
            "Let us take a selfie.",
            "You are ugly.",
            "Why can't we live in peace.",
            "Do you have money for me ?",
            "It's so boring.",
            "It's a nice day.",
            "I don't want to live here anymore.",
            "I hate america. Go away!",
            "Can i have your gun ?",
            "It's so hot today.",
            "Do you want to buy a goat ?"
          ];

switch (language) do {
    case "English" :
				{
					adint_informations;
				};
    case "German" :
				{
					adint_informations =
										[
											"Ich habe keine Informationen f�r dich.",
											"Lass mich in Ruhe.",
											"Ich spreche nicht mit euch.",
											"Geh weg.",
											"Lass uns ein Selfie machen.",
											"Du bist aber haesslich.",
											"Warum koennen wir nicht in Frieden leben.",
											"Hast du Geld fuer mich ?",
											"Es ist so langweilig hier.",
											"Schoenes Wetter heute.",
											  "Ich will hier nicht mehr leben.",
											  "Ich hasse Amerika. Haut ab.",
											  "Kann ich deine Waffe haben ?",
											  "Es ist so heiß heute.",
											  "Willst du eine Ziege kaufen ?"
										];
				};
    default
        {
          adint_informations;
        };
};

// WIP Checkpoint Tool - Nicht implementiert
adint_vehdefined = [];
adint_ext_vehclasses = [];
adint_veh_classes = [];
adint_vehsearchresult = 0.5;


adint_defined = []; // Alle verwendeten Einheiten denen die Actions hinzugefuegt wurden.
adint_ext_classes = ["LOP_Tak_Civ_Man_01","LOP_Tak_Civ_Man_02","LOP_Tak_Civ_Man_03","LOP_Tak_Civ_Man_04","Afghan_civilian1","Afghan_civilian1NH","Afghan_civilian2","Afghan_civilian2NH","Afghan_civilian3","Afghan_civilian3NH","Afghan_civilian4","Afghan_civilian5","Afghan_civilian6""Afghan_civilian6NH"]; // Klassen, die zu Missionsbegin nicht vorhanden sind, aber ggf nachgespawnt werden.

adint_kindness = 0; // Kindness of the civilians 0-1 // 0 - friendly 1 - hateful // Effects the civilian reactions to given instructions //
adint_escape = 0; // Chance auf Flucht der AI nach Stopp Instruktion
adint_searchresult = 0.2; // Possibility of reaction after searching // 0 nothing 1 every unit is reacting

adint_weapons = [["hgun_ACPC2_F","9Rnd_45ACP_Mag"],["hgun_P07_F","16Rnd_9x21_Mag"],["hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag"],["hgun_Rook40_F","16Rnd_9x21_Mag"],["hgun_PDW2000_F","30Rnd_9x21_Mag"]];
// Variables for Location

adint_vehicletypes = [["C_Offroad_01_F",[5,1,-5]],["C_SUV_01_F",[5,1,-5]],["C_Van_01_transport_F",[5,1,-5]],["RHS_Ural_Open_Civ_03",[7,2,7]]];

adcp_vehicleArray = ["RHS_Ural_Open_Civ_03","RHS_Ural_Civ_03","RHS_Ural_Open_Civ_02","RHS_Ural_Civ_02","RHS_Ural_Civ_01","RHS_Ural_Open_Civ_01","LOP_TAK_Civ_Ural_open","LOP_TAK_Civ_UAZ_Open","LOP_TAK_Civ_UAZ","LOP_TAK_Civ_Landrover","C_Van_01_box_F","C_Van_01_transport_F","C_Quadbike_01_F"];
adcp_crewArray = ["Afghan_Civilian2","Afghan_Civilian2NH","Afghan_civilian3","Afghan_civilian3NH","Afghan_Civilian4","Afghan_Civilian5","Afghan_Civilian6","Afghan_Civilian6NH","Afghan_civilian1","Afghan_civilian1NH"];
