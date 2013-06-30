/*
* ARIGATO JUMPER SCRIPT (v1.2)
* (c) Arigato Software, 2012
*/

player setvariable ["ARGT_JUMP_POWER", 3.5, true];
player setvariable ["ARGT_JUMP_READY", true, true];

ARGT_JUMP =
{
  private ["_moves", "_state", "_velocity", "_power", "_speed"];
  if ( ! (player getvariable "ARGT_JUMP_READY") || vehicle player != player ) exitwith {true};
  _moves = configfile >> gettext ( configfile >> "CfgVehicles" >> typeof player >> "moves" );
  _state = getnumber (_moves >> "Actions" >> gettext ( _moves >> "States" >> animationstate player >> "actions" ) >> "upDegree");
  if ( _state in [1,2,3,4,5,6,7,11,13,14] ) exitwith {true};
  _power = (1 - (damage player)) * (player getvariable "ARGT_JUMP_POWER");
  _speed = _power / 2;
  _velocity = velocity player;
  player switchmove "ActsPercMrunSlowWrflDf_FlipFlopPara";
  player setvariable ["ARGT_JUMP_READY", false, true];
  player setvelocity [(_velocity select 0) + _speed * sin getdir player,
                      (_velocity select 1) + _speed * cos getdir player,
                      (_velocity select 2) + _power];
  true
};

player addeventhandler ["AnimDone",
{
  private ["_unit"];
  _unit = _this select 0;
  if ( ! (_unit getvariable "ARGT_JUMP_READY") ) then {_unit setvariable ["ARGT_JUMP_READY", true, true]};
}];

ARGT_KEYDOWN =
{
  private ["_dikcode"];
  _dikcode = _this select 1;
  switch ( true ) do
  {
    case ( _dikcode == 0x03 ) : {call ARGT_JUMP}; // DIK_2
    default {false};
  };
};

while { true } do
{
  waituntil { ! isnull finddisplay 46 };
  finddisplay 46 displayaddeventhandler ["KeyDown", "_this call ARGT_KEYDOWN"];
  waituntil { isnull finddisplay 46 };
};