//C130 Cargo drop for wasteland by Signaller

if !((getPlayerUID player) in serverAdministrators) exitWith {hint "SiG Server Admin access only"}; //uncomment to make avalable for server admins only

if ((getPosATL herc select 2) < 50) exitWith {hint "Altitude too low! fly above 50 metres!"}; // stop drops below 50 metres
private ["_drink"];
_drink = _this select 0;
_Objtype = _water select (random (count _water - 1));

  
 // Random Military Vehicle array 
                
_water = [

	"Land_Barrel_water",
	"Land_Barrel_water"
	]; //note, no comma at end of array

_drink = _water select floor (random (count _water)) createvehicle getpos c130;

    
    		// Animate ramp
		sleep 1;
		herc animate ["ramp_top", 1];
		herc animate ["ramp_bottom", 1];
		
				// Detach object (drop)
		sleep 2;
		deTach _drink;
		_drink attachTo [herc,[0,-21,0]];
    




sleep 0.1;
		deTach _drink;
		_drink setPos [(getPos _drink select 0),(getPos _drink select 1),(getPos _drink select 2)-6];
_drink setVariable["water",20,true];
		// Create parachute and smoke
		sleep 2;
		_Parachute = "ParachuteBigWest_EP1" createVehicle position _drink;
		_Parachute setPos (getPos _drink);
		_smoke = "smokeShellblue" createVehicle position _drink;
		_smoke setPos (getPos _drink);
		_drink attachTo [_Parachute,[0,0,-1.5]];
		_smoke attachTo [_Parachute,[0,0,-1.5]];
		// close ramp again
		sleep 1;
		
		herc animate ["ramp_top", 0];
		herc animate ["ramp_bottom", 0];
		
	Hint "Cargo dropped";
	
     
		// Wait until on ground
		waitUntil {(getPos _drink select 2) < 2};
		deTach _drink;
		sleep 3;
		_drink setPos [(getPos _drink select 0),(getPos _drink select 1),0.001];

    		// Delete parachute
		sleep 15;
		
		deleteVehicle _Parachute;
		