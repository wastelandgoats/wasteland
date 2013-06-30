//C130 Cargo drop for wasteland by Signaller

if !((getPlayerUID player) in serverAdministrators) exitWith {hint "SiG Server Admin access only"}; //uncomment to make avalable for server admins only

if ((getPosATL herc select 2) < 50) exitWith {hint "Altitude too low! fly above 50 metres!"}; // stop drops below 50 metres
private ["_car","_mags","_rnd","_weapon","_mag"];
_car = _this select 0;

// Random weapons array

vweps = [

	"AK_107_kobra",
	"AK_47_M",
	"AK_47_S",
	"AK_74",
	"BAF_L85A2_RIS_ACOG",
	"m8_compact",
	"G36A_camo",
	"FN_FAL",
	"G36a",
	"SCAR_H_CQC_CCO",
	"M1014","M16A2",
	"m16a4","M4A1_Aim",
	"MP5A5","Sa58V_EP1",
	"Saiga12K",
	"SCAR_L_CQC",
	"Pecheneg",
	"BAF_L86A2_ACOG",
	"BAF_L85A2_RIS_SUSAT",
	"Sa61_EP1","UZI_EP1" //note, no comma at end of array 
];
                
_avec = ["BAF_Offroad_W", "LadaLM",
					"BAF_Offroad_D"];

_acar = _avec select floor (random (count _avec)) createvehicle getpos player;
		//Set up Wasteland Vars
  		 _acar setFuel (0.50);
  		 _acar setDamage (random 0.50);
     		 clearMagazineCargoGlobal _acar;
      	 clearWeaponCargoGlobal _acar;
      
//Grabs carname from array in execVM

_num = floor (random 100);
if (_num < 75) then { _acar addWeaponCargoGlobal ["Binocular", 1]};
if (_num < 15) then { _acar addWeaponCargoGlobal ["NVgoggles", 1]};

//Get Random Gun From randomWeapons Array.
_weapon = vweps select (random (count vweps - 1));
_mag = (getArray (configFile >> "Cfgweapons" >> _weapon >> "magazines")) select 0;

//Add guns and magazines, note the Global at the end..
_acar addMagazineCargoGlobal [_mag,1];
_acar addMagazineCargoGlobal [_mag,(random 4)];
_acar addWeaponCargoGlobal [_weapon,1];
    		// Animate ramp
		sleep 1;
		herc animate ["ramp_top", 1];
		herc animate ["ramp_bottom", 1];
		
		// Detach object (drop)
		sleep 2;
		deTach _acar;
		_acar attachTo [herc,[0,-21,0]];
		 	
  
	//Set authenticity
	_acar setVariable["original",1,true];

sleep 0.1;
		deTach _acar;
		_acar setPos [(getPos _acar select 0),(getPos _acar select 1),(getPos _acar select 2)-6];

		// Create parachute and smoke
		sleep 2;
		_Parachute = "ParachuteBigWest_EP1" createVehicle position _acar;
		_Parachute setPos (getPos _acar);
		_smoke = "smokeShellpurple" createVehicle position _acar;
		_smoke setPos (getPos _acar);
		_acar attachTo [_Parachute,[0,0,-1.5]];
		_smoke attachTo [_Parachute,[0,0,-1.5]];
		
	deleteVehicle herc;
	Sleep 0.1;
	player moveinDriver _acar; 
	 
	
     
		// Wait until on ground
		waitUntil {(getPos _acar select 2) < 2};
		deTach _acar;
		sleep 3;
		_acar setPos [(getPos _acar select 0),(getPos _acar select 1),0.001];
		sleep 1;



		// Delete parachute
		sleep 15;
		
		deleteVehicle _Parachute;
		sleep 5;