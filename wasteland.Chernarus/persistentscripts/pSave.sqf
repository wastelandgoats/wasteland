PDB_savePlayer = {
	_x = _this;
	if(isPlayer (_x)) then 
	{
		_playerUID = getPlayerUID _x;
		_playerSide = side _x;
		if(!isNil "_playerUID" && !isNil "_playerSide") then {
			_weapons = weapons _x;
			[_playerUID call PDB_databaseNameCompiler, _playerSide, "weapons", _weapons] call iniDB_write;
			
			_magazines = magazines _x;
			[_playerUID call PDB_databaseNameCompiler, _playerSide, "magazines", _magazines] call iniDB_write;
			
			_dir = getDir _x;
			[_playerUID call PDB_databaseNameCompiler, _playerSide, "dir", _dir] call iniDB_write;
			
			_pos = getPosASL _x;
			[_playerUID call PDB_databaseNameCompiler, _playerSide, "pos", _pos] call iniDB_write;
			
			_dammage = getDammage _x;
			[_playerUID call PDB_databaseNameCompiler, _playerSide, "dammage", _dammage] call iniDB_write;
			
			_cmoney = _x getVariable "cmoney";
			if(!isNil "_cmoney") then {
				[_playerUID call PDB_databaseNameCompiler, _playerSide, "cmoney", _cmoney] call iniDB_write;
			};
			_canfood = _x getVariable "canfood";
			if(!isNil "_canfood") then {
				[_playerUID call PDB_databaseNameCompiler, _playerSide, "canfood", _canfood] call iniDB_write;
			};
			_medkits = _x getVariable "medkits";
			if(!isNil "_medkits") then {
				[_playerUID call PDB_databaseNameCompiler, _playerSide, "medkits", _medkits] call iniDB_write;
			};
			_water = _x getVariable "water";
			if(!isNil "_water") then {
				[_playerUID call PDB_databaseNameCompiler, _playerSide, "water", _water] call iniDB_write;
			};
			_fuel = _x getVariable "fuel";
			if(!isNil "_fuel") then {
				[_playerUID call PDB_databaseNameCompiler, _playerSide, "fuel", _fuel] call iniDB_write;
			};
			_repairkits = _x getVariable "repairkits";
			if(!isNil "_repairkits") then {
				[_playerUID call PDB_databaseNameCompiler, _playerSide, "repairkits", _repairkits] call iniDB_write;
			};
			_fuelFull = _x getVariable "fuelFull";
			if(!isNil "_fuelFull") then {
				[_playerUID call PDB_databaseNameCompiler, _playerSide, "fuelFull", _fuelFull] call iniDB_write;
			};
			_fuelEmpty = _x getVariable "fuelEmpty";
			if(!isNil "_fuelEmpty") then {
				[_playerUID call PDB_databaseNameCompiler, _playerSide, "fuelEmpty", _fuelEmpty] call iniDB_write;
			};
			_bombs = _x getVariable "bombs";
			if(!isNil "_bombs") then {
				[_playerUID call PDB_databaseNameCompiler, _playerSide, "bombs", _bombs] call iniDB_write;
			};
			_spawnBeacon = _x getVariable "spawnBeacon";
			if(!isNil "_spawnBeacon") then {
				[_playerUID call PDB_databaseNameCompiler, _playerSide, "spawnBeacon", _spawnBeacon] call iniDB_write;
			};
			_camonet = _x getVariable "camonet";
			if(!isNil "_camonet") then {
				[_playerUID call PDB_databaseNameCompiler, _playerSide, "camonet", _camonet] call iniDB_write;
			};
			_thirstLevel = _x getVariable "thirstLevel";
			if(!isNil "_thirstLevel") then {
				[_playerUID call PDB_databaseNameCompiler, _playerSide, "thirstLevel", _thirstLevel] call iniDB_write;
			};
			_hungerLevel = _x getVariable "hungerLevel";
			if(!isNil "_hungerLevel") then {
				[_playerUID call PDB_databaseNameCompiler, _playerSide, "hungerLevel", _hungerLevel] call iniDB_write;
			};
		};
	};
};

PDB_savePlayerDead = {
	_playerUID = _this select 0;
	_playerSide = _this select 1;
	_weapons = [];
	[_playerUID call PDB_databaseNameCompiler, _playerSide, "weapons", _weapons] call iniDB_write;
	
	_magazines = [];
	[_playerUID call PDB_databaseNameCompiler, _playerSide, "magazines", _magazines] call iniDB_write;
	
	_dir = 0;
	[_playerUID call PDB_databaseNameCompiler, _playerSide, "dir", _dir] call iniDB_write;
	
	_pos = [0,0,0];
	[_playerUID call PDB_databaseNameCompiler, _playerSide, "pos", _pos] call iniDB_write;
	
	_dammage = 1;
	[_playerUID call PDB_databaseNameCompiler, _playerSide, "dammage", _dammage] call iniDB_write;
	
	_cmoney = 0;
	if(!isNil "_cmoney") then {
		[_playerUID call PDB_databaseNameCompiler, _playerSide, "cmoney", _cmoney] call iniDB_write;
	};
	_canfood = 0;
	if(!isNil "_canfood") then {
		[_playerUID call PDB_databaseNameCompiler, _playerSide, "canfood", _canfood] call iniDB_write;
	};
	_medkits = 0;
	if(!isNil "_medkits") then {
		[_playerUID call PDB_databaseNameCompiler, _playerSide, "medkits", _medkits] call iniDB_write;
	};
	_water = 0;
	if(!isNil "_water") then {
		[_playerUID call PDB_databaseNameCompiler, _playerSide, "water", _water] call iniDB_write;
	};
	_fuel = 0;
	if(!isNil "_fuel") then {
		[_playerUID call PDB_databaseNameCompiler, _playerSide, "fuel", _fuel] call iniDB_write;
	};
	_repairkits = 0;
	if(!isNil "_repairkits") then {
		[_playerUID call PDB_databaseNameCompiler, _playerSide, "repairkits", _repairkits] call iniDB_write;
	};
	_fuelFull = 0;
	if(!isNil "_fuelFull") then {
		[_playerUID call PDB_databaseNameCompiler, _playerSide, "fuelFull", _fuelFull] call iniDB_write;
	};
	_fuelEmpty = 0;
	if(!isNil "_fuelEmpty") then {
		[_playerUID call PDB_databaseNameCompiler, _playerSide, "fuelEmpty", _fuelEmpty] call iniDB_write;
	};
	_bombs = 0;
	if(!isNil "_bombs") then {
		[_playerUID call PDB_databaseNameCompiler, _playerSide, "bombs", _bombs] call iniDB_write;
	};
	_spawnBeacon = 0;
	if(!isNil "_spawnBeacon") then {
		[_playerUID call PDB_databaseNameCompiler, _playerSide, "spawnBeacon", _spawnBeacon] call iniDB_write;
	};
	_camonet = 0;
	if(!isNil "_camonet") then {
		[_playerUID call PDB_databaseNameCompiler, _playerSide, "camonet", _camonet] call iniDB_write;
	};
	_thirstLevel = 0;
	if(!isNil "_thirstLevel") then {
		[_playerUID call PDB_databaseNameCompiler, _playerSide, "thirstLevel", _thirstLevel] call iniDB_write;
	};
	_hungerLevel = 0;
	if(!isNil "_hungerLevel") then {
		[_playerUID call PDB_databaseNameCompiler, _playerSide, "hungerLevel", _hungerLevel] call iniDB_write;
	};
};

execVM "persistentscripts\pSaveReqLoop.sqf";
/*
sleep 5;
while {true} do {
	{
		_x spawn PDB_savePlayer;
	}foreach playableUnits;
	sleep 10;
};*/