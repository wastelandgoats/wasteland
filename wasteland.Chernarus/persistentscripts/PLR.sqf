PDB_LR = "";
while {true} do 
{
waitUntil {PDB_LR != ""};
[PDB_LR] execVM "persistentscripts\pLoad.sqf";
PDB_LR = "";
};