//C130 Cargo drop for wasteland by Signaller

if !((getPlayerUID player) in serverAdministrators) exitWith {hint "SiG Server Admin access only"}; //uncomment to make avalable for server admins only

if ((getPosATL herc select 2) < 50) exitWith {hint "Altitude too low! fly above 50 metres!"}; // stop drops below 50 metres
private ["_food"];
_food = _this select 0;
_Objtype = _water select (random (count _water - 1));

  
 // Random Military Vehicle array 
                
_water = [

	"Land_stand_small_EP1",
	"Land_stand_small_EP1"
	]; //note, no comma at end of array

_food = _water select floor (random (count _water)) createvehicle getpos c130;

    
    		// Animate ramp
		sleep 1;
		herc animate ["ramp_top", 1];
		herc animate ["ramp_bottom", 1];
		
				// Detach object (drop)
		sleep 2;
		deTach _food;
		_food attachTo [herc,[0,-21,0]];
    




sleep 0.1;
		deTach _food;
		_food setPos [(getPos _food select 0),(getPos _food select 1),(getPos _food select 2)-6];
_food setVariable["food",20,true];
		// Create parachute and smoke
		sleep 2;
		_Parachute = "ParachuteBigWest_EP1" createVehicle position _food;
		_Parachute setPos (getPos _food);
		_smoke = "smokeShellblue" createVehicle position _food;
		_smoke setPos (getPos _food);
		_food attachTo [_Parachute,[0,0,-1.5]];
		_smoke attachTo [_Parachute,[0,0,-1.5]];
		// close ramp again
		sleep 1;
		
		herc animate ["ramp_top", 0];
		herc animate ["ramp_bottom", 0];
		
	Hint "Cargo dropped";
	
     
		// Wait until on ground
		waitUntil {(getPos _food select 2) < 2};
		deTach _food;
		sleep 3;
		_food setPos [(getPos _food select 0),(getPos _food select 1),0.001];

    		// Delete parachute
		sleep 15;
		
		deleteVehicle _Parachute;
		


    
