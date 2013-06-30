//	@file Name: checkDonator.sqf

_uid = "";
_uid = getPlayerUID player;

if (_uid in TierOne) then {
    player execVM "addons\donators\tierOne.sqf"; 
    sleep 0.1;
    hint "Welcome MBS VIP!";
} 
else {

if (_uid in TierTwo) then {
    player execVM "addons\donators\tierTwo.sqf"; 
    sleep 0.1;
    hint "Welcome MBS VIP!";
} 
else {

if (_uid in TierThree) then {
    player execVM "addons\donators\tierThree.sqf"; 
    sleep 0.1;
    hint "Welcome MBS VIP!";
} 
else {

if (_uid in TierFour) then {
    player execVM "addons\donators\tierFour.sqf"; 
    sleep 0.1;
    hint "Welcome MBS VIP!";
} 
else {

    sleep 1;
    waitUntil {scriptDone _Handle};
};
};
};
};
