#include "dialog\buildstoreDefines.sqf";
disableSerialization;

_buildshopDialog = createDialog "buildshopd";
buildStoreCart = 0;

_Dialog = findDisplay buildshop_DIALOG;
_playerMoney = _Dialog displayCtrl buildshop_money;
_money = player getVariable "cmoney";
_playerMoney CtrlsetText format[""];

BuildShop = str(_this select 0);

if(BuildShop == "osPhone1") then {ShopSpawn = osSpawn1;};
if(BuildShop == "osPhone2") then {ShopSpawn = osSpawn2;};
if(BuildShop == "osPhone3") then {ShopSpawn = osSpawn3;};
if(BuildShop == "osPhone4") then {ShopSpawn = osSpawn4;};