#include "dialog\vehstoreDefines.sqf";

disableSerialization;

//Initialize Values
_veh_type = "";
_price = 0;

// Grab access to the controls
_dialog = findDisplay vehshop_DIALOG;
_itemlist = _dialog displayCtrl vehshop_item_list;
_itemlisttext = _dialog displayCtrl vehshop_money;

//Get Selected Item
_selectedItem = lbCurSel _itemlist;
_itemText = _itemlist lbText _selectedItem;
_itempicture ctrlSettext _picture;
_itemlisttext ctrlSetText format ["Price: 0$"];	

//Check Items Price
{if(_itemText == _x select 0) then{ 
	_type = _x select 2;
	_price = _x select 1;
	_item = (configFile >> "CfgVehicles" >> _type);
	_itemlisttext ctrlSetText format ["Price: %1$", _price];
}}forEach vehicleStoreArray;