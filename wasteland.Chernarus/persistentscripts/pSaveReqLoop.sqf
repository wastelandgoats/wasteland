[] spawn 
{
	while {true} do
	{
		PDB_saveReq = "";
		waitUntil {PDB_saveReq != ""};
		_uid = PDB_saveReq;
		{
			if(getPlayerUID _x == _uid) then
			{
				_x spawn PDB_savePlayer;
			};
		}foreach playableUnits;
	};
};

[] spawn 
{
	while {true} do
	{
		PDB_saveReqDead = [];
		waitUntil {count(PDB_saveReqDead) > 1};
		_uid = PDB_saveReqDead select 0;
		_side = PDB_saveReqDead select 1;
		[_uid, _side] spawn PDB_savePlayerDead;
	};
};