_layer = 85125;
_block = false;

_Weapons = ["SCAR_L_STD_EGLM_TWS","m8_tws","m8_tws_sd","m107_TWS_EP1","M110_TWS_EP1","AKS_74_GOSHAWK","BAF_AS50_TWS","M249_TWS_EP1","M249_TWS_EP1","PMC_AS50_TWS","BAF_L85A2_RIS_CWS","SCAR_H_STD_TWS_SD"];

while {true} do {
	if ({player hasWeapon _x} count _Weapons > 0) then {
        if (!_block) then {
            hint "You have been caught with a cheat weapon. Weapons removed.";
			diag_log format["WASTELAND SERVER - Hacked in weapon found, Name: %1, UID: %2", name player, getPlayerUID player];
			_text = format ["Player: %1 was caught with a hacked in weapon. Event has been logged.", name player];
			[-1, {player globalChat _this}, _text] call CBA_fnc_globalExecute;
            removeAllWeapons player; 
        };
	} else {
        if (_block) then
        {
                _layer cutText ["", "PLAIN"];
                _block = false;
        };
	};
	sleep 1;
};

_layer = 85125;
_block = false;