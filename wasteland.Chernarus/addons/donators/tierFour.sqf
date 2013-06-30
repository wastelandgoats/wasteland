//	@file Version: 1.0
//	@file Name: tierFour.sqf
//	@file Author: [BMRF] Madhatter
//	@file Created: 07/05/2013
//	@file Description: Tier Four

if (((getPlayerUID player) in TierFour)) then {

removeAllWeapons player;

player addMagazine "15Rnd_9x19_M9";
player addMagazine "15Rnd_9x19_M9";
player addMagazine "15Rnd_9x19_M9";
player addMagazine "30Rnd_556x45_Stanag";
player addMagazine "30Rnd_556x45_Stanag";
player addMagazine "30Rnd_556x45_Stanag";
player addWeapon "M9";
player addWeapon "M4A1";
player selectWeapon "M4A1";
player addWeapon "Binocular";
player addWeapon "NVgoggles";};
player setVariable["cmoney",400,true];
player setVariable["canfood",3,true];
player setVariable["water",3,true];
player setVariable["medkits",2,true];
player setVariable["fuel",0,true];
player setVariable["fuelFull",1,true];
player setVariable["fuelEmpty",0,true];
player setVariable["repairkits",0,true];
player setVariable["spawnBeacon",0,true];
player setVariable["camonet",0,true];

} else {
};