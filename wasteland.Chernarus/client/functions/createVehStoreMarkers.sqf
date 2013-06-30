_VehStores = ["VehStore1","VehStore2","VehStore3","VehStore4"];
_objSpawns = [VehSpawn1, VehSpawn2, VehSpawn3, VehSpawn4];
_objTables = [VehTable1, VehTable2, VehTable3, VehTable4];

//Creates the markers around general stores.
waitUntil {{!isNull(missionNamespace getVariable _x) && ((getPos(missionNamespace getVariable _x) distance [0,0,0]) > 100)} count _VehStores == count _VehStores};
{
	_unit = missionNamespace getVariable _x;
	
	// Gun store title    
    _markerName = format["marker_shop_title_%1",_x];
    deleteMarkerLocal _markerName;
	_marker = createMarkerLocal [_markerName, getPos _unit];
	_markerName setMarkerShapeLocal "ICON";
    _markerName setMarkerTypeLocal "Dot";
    _markerName setMarkerColorLocal "ColorBlue";
	_markerName setMarkerSizeLocal [0.8,0.8];
	_markerName setMarkerTextLocal "Car Shop";
	
} forEach _VehStores;
