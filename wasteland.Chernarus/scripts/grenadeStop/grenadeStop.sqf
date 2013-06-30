/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
    
    DESCRIPTION:
    Stops players from throwing grenades in safety zones.
    
    INSTALLATION:
    Move grenadeStop.sqf to your mission's folder. Then add the
    following line to your init.sqf file (create one if necessary):
    execVM "grenadeStop.sqf";
    
    CONFIGURATION:
    Edit the #defines below.
*/

#define SAFETY_ZONES    [["gunstore1", 25],["gunstore2", 25],["gunstore3", 25],["gunstore4", 25],["gunstore5", 25],["generalStore1", 25],["generalStore2", 25],["generalStore3", 25],["generalStore4", 25],["generalStore5", 25],["vs1", 25],["vs2", 25],["vs3", 25],["vs4", 25],["vs5", 25],["bs1", 25],["bs2", 25],["bs3", 25],["bs4", 25],["hc2", 25],["hc3", 25]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE 		"Do not throw grenades or Fire inside the NO FIRE ZONE!\nPress m to see the server rules" +\
						"\nIf you not obey or server rules u will be band for 24 hours."

if (isDedicated) exitWith {};
waitUntil {!isNull player};

player addEventHandler ["Fired", {
    if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
    {
        deleteVehicle (_this select 6);
        titleText [MESSAGE, "PLAIN", 3];
    };
}];  