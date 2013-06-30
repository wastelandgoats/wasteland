//	@file Version: 1.0
//	@file Name: init.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:13
//	@file Description: The main init.
//	@file Args:

#include "setup.sqf"
if (isnil "RE") then {[] execVM "\ca\Modules\MP\data\scripts\MPframework.sqf"};

StartProgress = false;
enableSaving[false,false];

X_Server = false;
X_Client = false;
X_JIP = false;
hitStateVar = false;
versionName = "v3.0";

if(isServer) then { X_Server = true;};
if(!isDedicated) then { X_Client = true;};
if(isNull player) then {X_JIP = true;};

true spawn {
	if(!isDedicated) then {
		titleText ["Setting up player...", "BLACK", 0];
		waitUntil {player == player};
		//Check if civilian
		if(!(getPlayerUID(player) in serverAdministrators) and (!(getPlayerUID(player) in administrators) && playerSide == civilian)) then { 
        endMission "LOSER"; 
		}; 
		//End check civilian
		client_initEH = player addEventHandler ["Respawn", {removeAllWeapons (_this select 0);}];
	};
};

//init Wasteland Core
[] execVM "config.sqf";
[] execVM "briefing.sqf";

if(X_Client) then {
	waitUntil {player == player};

	//Wipe Group.
	if(count units group player > 1) then
	{  
		//diag_log "Player Group Wiped";
		[player] join grpNull;    
	};

	[] execVM "client\init.sqf";
};

if(X_Server) then {
	diag_log format ["############################# %1 #############################", missionName];
	#ifdef __DEBUG__
	diag_log format ["T%1,DT%2,F%3", time, diag_tickTime, diag_frameno];
	#endif
    diag_log format["WASTELAND SERVER - Initilizing Server"];
	[] execVM "server\init.sqf";
};

//init 3rd Party Scripts
[] execVM "addons\R3F_ARTY_AND_LOG\init.sqf";
[] execVM "addons\proving_Ground\init.sqf";
[] execVM "scripts\grenadeStop\grenadeStop.sqf";
[] execVM "addons\advertise\advertise.sqf";
[300,300] execVM "scripts\clean\cly_removedead.sqf";
[0.1, 0.5, 0.5] execVM "addons\scripts\DynamicWeatherEffects.sqf";

//Persistens Stats
execVM "persistentscripts\init.sqf";

//donators?
if(X_Server) then {
execVM "Server\donators.sqf";};