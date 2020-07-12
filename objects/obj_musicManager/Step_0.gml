/// @description Insert description here
// You can write your code in this editor
if (obj_player1.numLives == 1 && !switching) {
	switching = true
	audio_sound_gain(track1,0,1000)
	audio_sound_gain(track2,1,1000)
}