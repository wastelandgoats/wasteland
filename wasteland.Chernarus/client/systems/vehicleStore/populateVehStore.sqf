#include "dialog\vehstoreDefines.sqf";
disableSerialization;

// Grab access to the controls
_dialog = findDisplay vehshop_DIALOG;
_itemlisttext = _dialog displayCtrl vehshop_item_TEXT;
_itempicture = _dialog displayCtrl vehshop_item_pic;
_itemlist = _dialog displayCtrl vehshop_item_list;								
_itemInfo = _dialog displayCtrl vehshop_item_Info;

lbClear _itemlist;
_itemlist lbSetCurSel -1;
_itempicture ctrlSettext "";
_itemlisttext ctrlSettext "";
_itemInfo ctrlSetStructuredText parseText "";
{
	_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];
} forEach vehicleStoreArray;