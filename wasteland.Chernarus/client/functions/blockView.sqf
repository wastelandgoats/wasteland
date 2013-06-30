while {alive player} do {
	if(cameraView == "GROUP") then {
		vehicle player switchCamera "EXTERNAL";
		player globalchat "commander view disabled";	
	};
	sleep 0.5;
};