
//	@file Version: 1.0
//	@file Name: playerHud.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 11/09/2012 04:23
//	@file Args:

disableSerialization;
private["_ui","_hud","_food","_water","_azimuth","_vehicleid","_vehname","_weap","_weapname","_picture"];

while {true} do
{
    1000 cutRsc ["WastelandHud","PLAIN"];
    _ui = uiNameSpace getVariable "WastelandHud";
    _vitals = _ui displayCtrl 3600;
    _hudVehicle = _ui displayCtrl 3601;
    
    //Calculate Health 0 - 100
    _decimalPlaces = 2;
    _health = damage player;
    _health = round (_health * (10 ^ _decimalPlaces)) / (10 ^ _decimalPlaces);
    _health = 100 - (_health * 100);
    
    _playerdir =  round (getDir vehicle player);
			
    _vitals ctrlSetStructuredText parseText format ["%1 <img size='0.8' image='client\icons\health.paa'/><br/>%2 <img size='0.8' image='client\icons\cannedfood.paa'/><br/>%3 <img size='0.8' image='client\icons\water.paa'/><br/>%4 <img size='0.8' image='\CA\misc\data\icons\picture_money_CA.paa'/><br/><t size='0.9' color='#ff0000'>%5</t> <t size='0.9' color='#86d600'>:DIR</t>", _health, hungerLevel, thirstLevel, (player getVariable "cmoney"), _playerdir];
    _vitals ctrlCommit 0;
    
    	_name = "";
        _vehicleID = "";
        _picture = ""; 
        _vehicle = assignedVehicle player;
        _vehname= getText (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "DisplayName");
        _weapname = getarray (configFile >> "CfgVehicles" >> typeOf (vehicle player) >> "Turrets" >> "MainTurret" >> "weapons"); 
        _weap = _weapname select 0;
        
    if(player != vehicle player) then
    {

	  /* _name = "";
        _vehicleID = "";
        _picture = ""; 
        _vehicle = assignedVehicle player;
        _vehname= getText (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "DisplayName");
        _weapname = getarray (configFile >> "CfgVehicles" >> typeOf (vehicle player) >> "Turrets" >> "MainTurret" >> "weapons"); 
        _weap = _weapname select 0;*/
        _tempstring = format ["<t size='1.0' color='#86d600'>%1</t><br/>", _vehname];
        _tempString = "";
        _yOffset = 0.24;
        _vehicle = assignedVehicle player;

        {
            if((driver _vehicle == _x) || (gunner _vehicle == _x)) then
            {
                if(driver _vehicle == _x) then
                {
                    _tempString = format ["<t size='1.0' color='#86d600'>%1 %2</t> <img size='1.0' color='#86d600' image='client\icons\driver.paa'/><br/>",_tempString, (name _x)];
                    _yOffset = _yOffset + 0.04;
                }
                else
                {
	                
	              /*_target = cursorTarget;
	            
	            if (_target isKindOf "Car" || _target isKindOf "Motorcycle" || _target isKindOf "Tank" || _target isKindOf "Air" || _target isKindOf "Ship") then

       		{
       			_vehicleID = getText (configFile >> "cfgVehicles" >> typeOf _target >> "displayname");		             
       			_picture = getText (configFile >> "cfgVehicles" >> typeOf _target >> "picture");

      		};*/
                _tempString = format ["%1 %2 <img size='1.0' image='client\icons\gunner.paa'/><br/>",_tempString, (name _x)];
                _yOffset = _yOffset + 0.04;
            }; 
            }
            else
            {
                _tempString = format ["<t size='1.0' color='#86d600'>%1 %2</t> <img size='1.0' color='#86d600' image='client\icons\passenger.paa'/><br/>",_tempString, (name _x)];
                _yOffset = _yOffset + 0.04;
            };    
        } forEach crew _vehicle;

        _hudVehicle ctrlSetStructuredText parseText _tempString;
        _x = safeZoneX + (safeZoneW * (1 - (0.42 / SafeZoneW)));
        _y = safeZoneY + (safeZoneH * (1 - (_yOffset / SafeZoneH)));
        _hudVehicle ctrlSetPosition [_x, _y, 0.4, 0.65];
        _hudVehicle ctrlCommit 0;
    };
        
    sleep 1;
};