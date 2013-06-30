#include "dialog\vehstoreDefines.sqf";
disableSerialization;

_vehshopDialog = createDialog "vehshopd";
vehStoreCart = 0;

_Dialog = findDisplay vehshop_DIALOG;
_playerMoney = _Dialog displayCtrl vehshop_money;
_money = player getVariable "cmoney";
_playerMoney CtrlsetText format[""];

VehicleShop = str(_this select 0);

if(VehicleShop == "VehStore1") then {ShopSpawn = VehSpawn1;};
if(VehicleShop == "vehStore2") then {ShopSpawn = vehSpawn2;};
if(VehicleShop == "vehStore3") then {ShopSpawn = vehSpawn3;};
if(VehicleShop == "vehStore4") then {ShopSpawn = vehSpawn4;};
if(VehicleShop == "vehStore5") then {ShopSpawn = vehSpawn5;};