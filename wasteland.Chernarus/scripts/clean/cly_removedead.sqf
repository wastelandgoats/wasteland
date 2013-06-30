/*
	CLY Remove Dead by Celery
	Removes dead units and vehicles from the battlefield.
	Version 2011.10.28
	
	The script is less functional in plain Arma 2 because it lacks the allDead command. In plain Arma 2 the script...
	- is probably a little heavier
	- doesn't remove vehicles or animals
	- lacks the hideBody transition due to its bugged nature in Arma 2 Free

	Execute in init script:
	[60,0,true] execVM "scripts\clean\cly_removedead.sqf";
	[wait time for men,wait time for vehicles,remove units with gear (optional, default true)] execVM "scripts\clean\cly_removedead.sqf";
	A wait time of 0 prevents that type from being removed.
	Prevent an individual unit from being removed:  this setVariable ["CLY_removedead",false,true]
	Remove an individual unit immediately upon death:  this setVariable ["CLY_removedead",true,true]
	
	Use the CLY_ignoregear array to define gear classnames that don't prevent a unit's removal when only gearless bodies are removed.
	Alternatively, use CLY_keepgear to define gear that prevents removal when geared unit removal is enabled.
	Remember correct upper and lower case in classnames or it won't work! Check config browsers if not sure.
*/

if (!isServer) exitWith {};

CLY_ignoregear=["ItemRadio","ItemCompass","ItemWatch","ItemMap","ItemGPS"];
CLY_keepgear=[];
CLY_noremovegear=[];
_oa=isClass (configFile/"CfgPatches"/"CA_E");

_manwait=_this select 0;
_vehiclewait=if (count _this>1) then {_this select 1} else {_manwait};
CLY_removegeared=if (count _this>2) then {_this select 2} else {true};
CLY_removedeadpending=[];
CLY_dontremovedead=[];
CLY_dontremovedeadremove=[];
publicVariable "CLY_dontremovedeadremove";

//Spawnable script
_removedead={
	_unit=_this select 0;
	_wait=_this select 1;
	sleep _wait;
	waitUntil {isNull flag _unit};
	_gear=if (_unit isKindOf "Man") then {(magazines _unit+weapons _unit)-CLY_ignoregear} else {[]};
	if (isNull _unit or _unit in CLY_dontremovedead or (CLY_removegeared and {_x in CLY_keepgear} count _gear>0) or (!CLY_removegeared and count _gear>0)) exitWith {
		CLY_removedeadpending=CLY_removedeadpending-[_unit];
	};
	if (_unit isKindOf "Man" and isClass (configFile/"CfgPatches"/"CA_E")) then {
		hideBody _unit;
		_removetime=time+8;
		while {getPos _unit select 2<0.2 and time<_removetime} do {sleep 0.1};
	};
	CLY_removedeadpending=CLY_removedeadpending-[_unit];
	deleteVehicle _unit;
};

//Loop
_allunits=[];
_alldead=[];
while {true} do {
	if (!_oa) then {_allunits=allUnits};
	sleep 1;
	if (!_oa) then {
		{if (!alive _x) then {_alldead set [count _alldead,_x]}} forEach _allunits;
		{if (isNull _x) then {_alldead=_alldead-[_x]}} forEach _alldead;
	} else {_alldead=allDead};
	{
		if (isNil {_x getVariable "CLY_removedead"}) then {
			if !(_x in CLY_removedeadpending) then {
				_wait=if (_x isKindOf "Man") then {_manwait} else {_vehiclewait};
				_gear=if (_x isKindOf "Man") then {(magazines _x+weapons _x)-CLY_ignoregear} else {[]};
				if (_wait>0 and ((CLY_removegeared and {_x in CLY_keepgear} count _gear==0) or (!CLY_removegeared and count _gear==0))) then {
					[_x,_wait] spawn _removedead;
					CLY_removedeadpending set [count CLY_removedeadpending,_x];
				};
			};
		} else {
			if (_x getVariable "CLY_removedead") then {
				if (vehicle _x==_x) then {
					CLY_removedeadpending set [count CLY_removedeadpending,_x];
					[_x,0] spawn _removedead;
					_x setVariable ["CLY_removedead",nil];
				};
			} else {
				CLY_dontremovedead set [count CLY_dontremovedead,_x];
				_x setVariable ["CLY_removedead",nil];
			};
		};
	} forEach _alldead-CLY_dontremovedead;
	if (count CLY_dontremovedeadremove>0) then {
		CLY_dontremovedead=CLY_dontremovedead-CLY_dontremovedeadremove;
		CLY_dontremovedeadremove=[];
		publicVariable "CLY_dontremovedeadremove";
	};
};