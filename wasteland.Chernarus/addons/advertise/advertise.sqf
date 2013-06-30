//Create an innitial sleep time of 5 min to pass the starting hint messages.
sleep 150;

_AddvertiseArray = [
	["Need Admin?", "The fasted way to contact an admin is to join our teamspeak and ask for help. IP: ts.sigclan.com"],
	["Website", "Join up on our website and take part in the discussions: www.sigclan.com"],
	["Dont shoot", "Dont shoot Server Admins. The have Cop clothing. And Drones"],
	["Restarts", "The server restarts everyday."],
	["Join SIG", "SIG is a clan. Come join us on TeamSpeak and become part of the great clan."]
];

while {true} do
{
	sleep 300; //Every 5 Min
	
	// Get random Advertise message from the array
	_message = _AddvertiseArray select (random (count _AddvertiseArray - 1));
	
	
	hint parseText format ["
		<t align='center' color='#0066FF' shadow='2' size='1.75'>%1</t>
		<t align='center' color='#0066FF'>_____________________</t>
		<br/>
		<t align='center' color='#FFFFCC' size='1.25'>%2</t>
	", (_message select 0), (_message select 1)];
};