
//	@file Version: 1.0
//	@file Name: itemfnc.sqf
//	@file Original Author: TAW_Tonic
//  @file Author: [404] Costlyy, [404] Deadbeat
//	@file Created: 01/01/1970 00:00
//	@file Args: [int (0 = use | 1 = drop)]

#include "dialog\content_sys.sqf";
#define GET_DISPLAY (findDisplay contentsys_DIALOG)
#define GET_CTRL(a) (GET_DISPLAY displayCtrl ##a)
#define GET_SELECTED_DATA(a) ([##a] call {_idc = _this select 0;_selection = (lbSelection GET_CTRL(_idc) select 0);if (isNil {_selection}) then {_selection = 0};(GET_CTRL(_idc) lbData _selection)})
if(isNil {dropActive}) then {dropActive = false};
disableSerialization;

private["_switch", "_data", "_objet", "_objPos", "_pos", "_est_deplace_par", "_action_menu_release_relative", "_action_menu_release_horizontal" , "_action_menu_45", "_action_menu_90", "_action_menu_180"];
_switch = _this select 0;
_data = GET_SELECTED_DATA(content_list);
switch(_switch) do 
{
	case 0: // Buy Content
	{
		closeDialog 0;

			
			
		_playerPos = getPosATL player;
		_dir = getdir player;
		_objet = _data createVehicle (position player); 
		_objet setPos _playerPos;
		_objet setDir _dir;
		

		_objet attachTo [player, [0,(((boundingBox _objet select 1 select 1) max (-(boundingBox _objet select 0 select 1))) max ((boundingBox _objet select 1 select 0) max (-(boundingBox _objet select 0 select 0)))) + 1,1]];
			
		[_objet] execVM "addons\R3F_ARTY_AND_LOG\R3F_LOG\objet_deplacable\deplacer.sqf";
			

			
		player groupChat format["You buy 1x %1",_data];
		
	};
};