#include "dialog\chopstoreDefines.sqf";
disableSerialization;

_chopshopDialog = createDialog "chopshopd";
chopStoreCart = 0;

_Dialog = findDisplay chopshop_DIALOG;
_playerMoney = _Dialog displayCtrl chopshop_money;
_money = player getVariable "cmoney";
_playerMoney CtrlsetText format[""];

ChopperShop = str(_this select 0);

if(ChopperShop == "ChopStore2") then {ShopSpawn = ChopSpawn2;};
if(ChopperShop == "ChopStore3") then {ShopSpawn = ChopSpawn3;};
