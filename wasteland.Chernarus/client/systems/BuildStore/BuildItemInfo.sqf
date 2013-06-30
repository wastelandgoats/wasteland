#include "dialog\buildstoreDefines.sqf";

disableSerialization;

//Initialize Values
_build = "";
_price = 0;

// Grab access to the controls
_dialog = findDisplay buildshop_DIALOG;
_itemlist = _dialog displayCtrl buildshop_item_list;
_itemlisttext = _dialog displayCtrl buildshop_money;

_itempicture = _dialog displayCtrl buildshop_item_pic;
_itemlisttext = _dialog displayCtrl buildshop_item_TEXT;
_itemInfo = _dialog displayCtrl buildshop_item_Info;

//Get Selected Item
_selectedItem = lbCurSel _itemlist;
_itemText = _itemlist lbText _selectedItem;
_itempicture ctrlSettext _picture;
_itemlisttext ctrlSetText format [""];	

//Check Items Price
{if(_itemText == _x select 0) then{ 
	_build = _x select 2;
	_price = _x select 1;
	_item = (configFile >> "CfgVehicles" >> _veh);
	_itemlisttext ctrlSetText format ["Price: $%1", _price];
}}forEach BuildStoreArray;