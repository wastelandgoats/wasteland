_playerUID = _this select 0;
{
		_x spawn PDB_savePlayer;
}foreach playableUnits;