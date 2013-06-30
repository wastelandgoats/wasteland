#include "dialog\chopstoreDefines.sqf";
disableSerialization;

// Grab access to the controls
_dialog = findDisplay chopshop_DIALOG;
_itemlisttext = _dialog displayCtrl chopshop_item_TEXT;
_itempicture = _dialog displayCtrl chopshop_item_pic;
_itemlist = _dialog displayCtrl chopshop_item_list;								
_itemInfo = _dialog displayCtrl chopshop_item_Info;

lbClear _itemlist;
_itemlist lbSetCurSel -1;
_itempicture ctrlSettext "";
_itemlisttext ctrlSettext "";
_itemInfo ctrlSetStructuredText parseText "";
{
	_itemlistIndex = _itemlist lbAdd format["%1",_x select 0];
} forEach ChopperStoreArray;