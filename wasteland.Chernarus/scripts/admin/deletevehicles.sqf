if !((getPlayerUID player) in serverAdministrators) exitWith {hint "MBS Server Admin access only"};

{if (_x isKindOf "LandVehicle") then {deleteVehicle _x}} forEach allDead