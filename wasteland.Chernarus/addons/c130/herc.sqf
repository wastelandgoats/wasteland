if (!local player) exitWith {};
if !((getPlayerUID player) in serverAdministrators) exitWith {hint "SiG Server Admin access only"};
if (alive herc) exitWith {hint "C130 Already spawned"};
 
herc = createVehicle ["C130J_US_EP1", player, [], 0, "FLY"]; 
herc setPosASL [(getMarkerPos "c130") select 0,(getMarkerPos "c130") select 1,1000];
player moveindriver herc;   
herc setVehicleInit "
this addAction[('<t color=''#E6CE49''>' + ('Drop Random Vec') +    '</t>'),'addons\c130\randomvec.sqf'];
this addAction[('<t color=''#4D59D6''>' + ('Drop Water') +    '</t>'),'addons\c130\water.sqf'];
this addAction[('<t color=''#1E6B0B''>' + ('Drop Food') +    '</t>'),'addons\c130\food.sqf'];
this addAction[('<t color=''#85e594''>' + ('Drop Civilian Vec') +    '</t>'),'addons\c130\civvecs.sqf'];
this addAction[('<t color=''#df9d1a''>' + ('Drop Military Vec') +    '</t>'),'addons\c130\milvecs.sqf'];
this addAction[('<t color=''#d82d08''>' + ('Armed Military Vec') +    '</t>'),'addons\c130\milarmvecs.sqf'];
this addAction[('<t color=''#C91518''>' + ('Delete C130, Deploy Escape Car') +    '</t>'),'addons\c130\hercdelete.sqf']; 
this allowdamage false;
nul=[herc] execVM 'addons\c130\vehiclelock.sqf';";
processInitCommands;          		
                 
//this addAction[('<t color=''#d508d8''>' + ('Drop Ammo') +    '</t>'),'c130\dropammo.sqf'];