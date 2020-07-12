alarm[0] = alarm_speed;
if (global.gameRunning) {
	seconds++
	global.passedTime++
}

if (seconds >= 60) {
	seconds = 0
	minutes++
}
