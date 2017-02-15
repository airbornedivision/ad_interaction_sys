class adss_menu
    {
        idd = 5000;
        movingenable = 0;
		onLoad = "uiNamespace setVariable ['adss_menu', _this select 0];";      
        onUnLoad = "uiNamespace setVariable ['adss_menu', nil];";
		class ControlsBackground
		{
			class background_main: adss_gui_text
			{
				idc = -1;
				x = 0.298906 * safezoneW + safezoneX;
				y = 0.2602 * safezoneH + safezoneY;
				w = 0.402187 * safezoneW;
				h = 0.506 * safezoneH;
				colorBackground[] = {0,0,0,0.8};
			};
			class background_header: adss_gui_text
			{
				idc = -1;
				text = "Airborne Division Survival System";
				x = 0.298906 * safezoneW + safezoneX;
				y = 0.236 * safezoneH + safezoneY;
				w = 0.402187 * safezoneW;
				h = 0.022 * safezoneH;
				colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.9])"};
			};
			class text_value_hunger: adss_gui_text
			{
				idc = -1;
				text = "$STR_DIALOG_hunger";
				x = 0.309219 * safezoneW + safezoneX;
				y = 0.269 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class text_value_thirst: adss_gui_text
			{
				idc = -1;
				text = "$STR_DIALOG_thirst";
				x = 0.309219 * safezoneW + safezoneX;
				y = 0.302 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class text_value_legpouch: adss_gui_text
			{
				idc = -1;
				text = "$STR_DIALOG_leg_pouch";
				x = 0.407187 * safezoneW + safezoneX;
				y = 0.269 * safezoneH + safezoneY;
				w = 0.0567187 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class line_01: adss_gui_text
			{
				idc = -1;
				x = 0.298906 * safezoneW + safezoneX;
				y = 0.3372 * safezoneH + safezoneY;
				w = 0.402187 * safezoneW;
				h = 0.001 * safezoneH;
				colorBackground[] = {1,1,1,0.8};
			};
			class line_02: adss_gui_text
			{
				idc = -1;
				x = 0.427812 * safezoneW + safezoneX;
				y = 0.3372 * safezoneH + safezoneY;
				w = 0.001 * safezoneW;
				h = 0.308 * safezoneH;
				colorBackground[] = {1,1,1,0.8};
			};
			class line_03: adss_gui_text
			{
				idc = -1;
				x = 0.563937 * safezoneW + safezoneX;
				y = 0.3372 * safezoneH + safezoneY;
				w = 0.001 * safezoneW;
				h = 0.308 * safezoneH;
				colorBackground[] = {1,1,1,0.8};
			};
			class line_04: adss_gui_text
			{
				idc = -1;
				x = 0.298906 * safezoneW + safezoneX;
				y = 0.6452 * safezoneH + safezoneY;
				w = 0.402187 * safezoneW;
				h = 0.001 * safezoneH;
				colorBackground[] = {1,1,1,0.8};
			};
			class text_header_eat: adss_gui_text
			{
				idc = -1;
				text = "$STR_DIALOG_eat";
				x = 0.345312 * safezoneW + safezoneX;
				y = 0.324 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class text_header_drink: adss_gui_text
			{
				idc = -1;
				text = "$STR_DIALOG_drink";
				x = 0.479375 * safezoneW + safezoneX;
				y = 0.324 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class text_header_building: adss_gui_text
			{
				idc = -1;
				text = "$STR_DIALOG_build";
				x = 0.618594 * safezoneW + safezoneX;
				y = 0.324 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class text_value_drink: adss_gui_text
			{
				idc = -1;
				text = "$STR_DIALOG_value";
				x = 0.448438 * safezoneW + safezoneX;
				y = 0.434 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class text_value_eat: adss_gui_text
			{
				idc = -1;
				text = "$STR_DIALOG_value";
				x = 0.314375 * safezoneW + safezoneX;
				y = 0.434 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class text_shovel: adss_gui_text
			{
				idc = -1;
				text = "$STR_DIALOG_shovel";
				x = 0.5825 * safezoneW + safezoneX;
				y = 0.467 * safezoneH + safezoneY;
				w = 0.0464063 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class text_time_build: adss_gui_text
			{
				idc = -1;
				text = "$STR_DIALOG_time";
				x = 0.5825 * safezoneW + safezoneX;
				y = 0.434 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class text_material: adss_gui_text
			{
				idc = -1;
				text = "$STR_DIALOG_material";
				x = 0.5825 * safezoneW + safezoneX;
				y = 0.5 * safezoneH + safezoneY;
				w = 0.0464063 * safezoneW;
				h = 0.055 * safezoneH;
			};
		};
        class Controls
		{
			
			class text_value_hunger_var: adss_gui_text
			{
				idc = 5001;
				text = "";
				x = 0.350469 * safezoneW + safezoneX;
				y = 0.269 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class text_value_thirst_var: adss_gui_text
			{
				idc = 5002;
				text = "";
				x = 0.350469 * safezoneW + safezoneX;
				y = 0.302 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class text_value_legpouch_var: adss_gui_text
			{
				idc = 5003;
				text = "";
				x = 0.463906 * safezoneW + safezoneX;
				y = 0.269 * safezoneH + safezoneY;
				w = 0.12375 * safezoneW;
				h = 0.022 * safezoneH;
			};
			class button_close: adss_gui_button
			{
				idc = 5004;
				text = "$STR_DIALOG_close";
				x = 0.608281 * safezoneW + safezoneX;
				y = 0.731 * safezoneH + safezoneY;
				w = 0.0825 * safezoneW;
				h = 0.022 * safezoneH;
				action = "closedialog 0";
			};
			class button_use_eat: adss_gui_button
			{
				idc = 5005;
				text = "$STR_DIALOG_use";
				x = 0.320562 * safezoneW + safezoneX;
				y = 0.61 * safezoneH + safezoneY;
				w = 0.0825 * safezoneW;
				h = 0.022 * safezoneH;
				action = "[] spawn adss_fnc_playerEat";
			};
			class combo_eat: adss_gui_combo
			{
				idc = 5006;
				x = 0.314375 * safezoneW + safezoneX;
				y = 0.39 * safezoneH + safezoneY;
				w = 0.103125 * safezoneW;
				h = 0.018 * safezoneH;
				onLBSelChanged = "[] spawn adss_fnc_dialogComboEat";
			};
			class text_value_eat_var: adss_gui_text
			{
				idc = 5007;
				text = "";
				x = 0.360781 * safezoneW + safezoneX;
				y = 0.434 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class combo_drink: adss_gui_combo
			{
				idc = 5008;
				x = 0.448438 * safezoneW + safezoneX;
				y = 0.39 * safezoneH + safezoneY;
				w = 0.103125 * safezoneW;
				h = 0.018 * safezoneH;
				onLBSelChanged = "[] spawn adss_fnc_dialogComboDrink";
			};
			class text_value_drink_var: adss_gui_text
			{
				idc = 5009;
				text = "";
				x = 0.494844 * safezoneW + safezoneX;
				y = 0.434 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class combo_build: adss_gui_combo
			{
				idc = 5010;
				x = 0.5825 * safezoneW + safezoneX;
				y = 0.39 * safezoneH + safezoneY;
				w = 0.103125 * safezoneW;
				h = 0.018 * safezoneH;
				onLBSelChanged = "[] spawn adss_fnc_dialogComboBuild";
			};
			class text_time_build_var: adss_gui_text
			{
				idc = 5011;
				text = "";
				x = 0.649531 * safezoneW + safezoneX;
				y = 0.434 * safezoneH + safezoneY;
				w = 0.04125 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class button_use_drink: adss_gui_button
			{
				idc = 5012;
				text = "$STR_DIALOG_use";
				x = 0.453594 * safezoneW + safezoneX;
				y = 0.61 * safezoneH + safezoneY;
				w = 0.0825 * safezoneW;
				h = 0.022 * safezoneH;
				action = "[] spawn adss_fnc_playerDrink";
			};
			class button_use_build: adss_gui_button
			{
				idc = 5013;
				text = "$STR_DIALOG_use";
				x = 0.592812 * safezoneW + safezoneX;
				y = 0.61 * safezoneH + safezoneY;
				w = 0.0825 * safezoneW;
				h = 0.022 * safezoneH;
				action = "[] spawn adss_fnc_playerBuildSelected";
			};
			class button_legpouch_toggle: adss_gui_button
			{
				idc = 5014;
				text = "$STR_DIALOG_leg_pouch_button";
				x = 0.309219 * safezoneW + safezoneX;
				y = 0.731 * safezoneH + safezoneY;
				w = 0.0825 * safezoneW;
				h = 0.022 * safezoneH;
				tooltip = "$STR_DIALOG_leg_pouch_tooltip";
				action = "[] spawn adss_fnc_playerTogglePouch";
			};
			class button_display_toggle: adss_gui_button
			{
				idc = 5015;
				text = "Display";
				x = 0.402031 * safezoneW + safezoneX;
				y = 0.731 * safezoneH + safezoneY;
				w = 0.0825 * safezoneW;
				h = 0.022 * safezoneH;
				tooltip = "$STR_DIALOG_toggle_display";
				action = "[] spawn adss_fnc_playerToggleDisplay";
			};
			class text_camonet: adss_gui_text
			{
				idc = 5016;
				text = "$STR_DIALOG_camo_material";
				x = 0.5825 * safezoneW + safezoneX;
				y = 0.533 * safezoneH + safezoneY;
				w = 0.08 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class text_shovel_var: adss_gui_text
			{
				idc = 5017;
				text = "";
				x = 0.649531 * safezoneW + safezoneX;
				y = 0.467 * safezoneH + safezoneY;
				w = 0.0464063 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class text_material_var: adss_gui_text
			{
				idc = 5018;
				text = "";
				x = 0.649531 * safezoneW + safezoneX;
				y = 0.5 * safezoneH + safezoneY;
				w = 0.0464063 * safezoneW;
				h = 0.055 * safezoneH;
			};
			class text_camonet_var: adss_gui_text
			{
				idc = 5019;
				text = "";
				x = 0.649531 * safezoneW + safezoneX;
				y = 0.533 * safezoneH + safezoneY;
				w = 0.0464063 * safezoneW;
				h = 0.055 * safezoneH;
			};
		};
	};