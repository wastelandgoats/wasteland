#include "dialog\content_sys.sqf"; 
if(isnil {player getVariable "cmoney"}) then {player setVariable["cmoney",0,true];};
if(dialog) exitwith{};

disableSerialization;

private["_Dialog","_foodtext","_watertext","_moneytext","_mvalue","_rogue"];

_playerDialog = createDialog "contentSettings";

_Dialog = findDisplay contentsys_DIALOG;
_moneytext = _Dialog displayCtrl money_text;
_moneytext ctrlSetText format["%1", player getVariable "cmoney"];