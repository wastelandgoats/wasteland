#include "content_sys.sqf"

class contentSettings {

	idd = contentsys_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] execVM 'client\systems\contentMenu\content_list.sqf'";
	
	class controlsBackground {
		
		class MainBG : w_RscPicture {
			idc = -1;
			text = "\ca\ui\data\ui_background_controlers_ca.paa";		
			moving = true;
			x = 0.0; y = 0.1;
			w = 1.0; h = 0.65;
		};
		
		class MainTitle : w_RscText {
			idc = -1;
			text = "Content Buy Menu";
			sizeEx = 0.04;
			shadow = 2;		
			x = 0.260; y = 0.112;
			w = 0.3; h = 0.05;
		};
		
		class moneyIcon : w_RscPicture {	
	  		idc = -1;
        	text = "\CA\misc\data\icons\picture_money_CA.paa";
        	x = 0.02; y = 0.32;
			w = 0.04; h = 0.04;
		};
		
		class moneyText : w_RscText {
			idc = money_text;
			text = "";
			sizeEx = 0.03;
			x = 0.06; y = 0.313;
			w = 0.3; h = 0.05;
		};
		
	};
	
	class controls {
	
		class contentList : w_Rsclist {
			idc = content_list;
			x = 0.255; y = 0.200;
			w = 0.470; h = 0.325;
		};
		
		class BuyButton : w_RscButton {
			text = "Buy";
			onButtonClick = "[0] execVM 'client\systems\contentMenu\contentfnc.sqf'";
			x = 0.610; y = 0.54;
			w = 0.125; h = 0.033 * safezoneH;
		};		
		
		class CloseButton : w_RscButton {
			text = "Close";
			onButtonClick = "closeDialog 0;";
			x = 0.02; y = 0.68;
			w = 0.125; h = 0.033 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
		
	};

};