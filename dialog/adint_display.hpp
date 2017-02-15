class rsctitles
    {
        titles[] = {adss_status_display};
        
        class adss_status_display
        {
			idd = -1;
			movingenable = 1;
			duration = 4;	
			fadein = 0;
			fadeout = 0;
			name = "adss_status_display"; 
			onLoad = uiNamespace setVariable ["adss_status_display", _this select 0];      
			onUnLoad = uiNamespace setVariable ["adss_status_display", nil];
				
				class controls
				{
						class adss_display_hunger: adss_gui_picture
						{
							idc = 1200;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.97975 * safezoneW + safezoneX;
							y = 0.68 * safezoneH + safezoneY;
							w = 0.0194063 * safezoneW;
							h = 0.039 * safezoneH;
						};
						class adss_display_thirst: adss_gui_picture
						{
							idc = 1201;
							text = "#(argb,8,8,3)color(1,1,1,1)";
							x = 0.98 * safezoneW + safezoneX;
							y = 0.621 * safezoneH + safezoneY;
							w = 0.0174063 * safezoneW;
							h = 0.037 * safezoneH;
						};
				};      
		};
};