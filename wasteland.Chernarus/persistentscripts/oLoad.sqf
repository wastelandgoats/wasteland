sleep 10;
_check = ("Objects" call PDB_databaseNameCompiler) call iniDB_exists;
if(!_check) exitWith {};
_objectscount = ["Objects" call PDB_databaseNameCompiler, "Count", "Count", "NUMBER"] call iniDB_read;
if(isNil "_objectscount") exitWith {};
for[{_i = 0}, {_i < _objectscount}, {_i = _i + 1}] do {
	_objSaveName = format["obj%1", _i];
	_class = ["Objects" call PDB_databaseNameCompiler, _objSaveName, "classname", "STRING"] call iniDB_read;
	_pos = ["Objects" call PDB_databaseNameCompiler, _objSaveName, "pos", "ARRAY"] call iniDB_read;
	_dir = ["Objects" call PDB_databaseNameCompiler, _objSaveName, "dir", "ARRAY"] call iniDB_read;
	_supplyleft = ["Objects" call PDB_databaseNameCompiler, _objSaveName, "supplyleft", "NUMBER"] call iniDB_read;
	_weapons = ["Objects" call PDB_databaseNameCompiler, _objSaveName, "weapons", "ARRAY"] call iniDB_read;
	_magazines = ["Objects" call PDB_databaseNameCompiler, _objSaveName, "magazines", "ARRAY"] call iniDB_read;
	if(!isNil "_objSaveName" && !isNil "_class" && !isNil "_pos" && !isNil "_dir" && !isNil "_supplyleft" && !isNil "_weapons" && !isNil "_magazines") then 
	{

		_obj = createVehicle [_class,_pos, [], 0, "CAN COLLIDE"];
		_obj setPosASL _pos;
		_obj setVectorDirAndUp _dir;

		if(_class == "Land_stand_small_EP1") then 
		{
			_obj setVariable["food",_supplyleft,true];
		};

		if(_class == "Land_Barrel_water") then 
		{
			_obj setVariable["water",_supplyleft,true];
		};

		clearWeaponCargoGlobal _obj;
		clearMagazineCargoGlobal _obj;

		for[{_ii = 0}, {_ii < (count (_weapons select 0))}, {_ii = _ii + 1}] do {
			_obj addWeaponCargoGlobal [(_weapons select 0) select _ii, (_weapons select 1) select _ii];
		};

		for[{_ii = 0}, {_ii < (count (_magazines select 0))}, {_ii = _ii + 1}] do {
			_obj addMagazineCargoGlobal [(_magazines select 0) select _ii, (_magazines select 1) select _ii];
		};
		//_obj setVariable ["objectLocked", true, true];
	};
};