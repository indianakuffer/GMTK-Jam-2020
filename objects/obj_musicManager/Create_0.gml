/// @description Insert description here
// You can write your code in this editor
gain1 = 0
gain2 = 0
switching = false

track1 = audio_play_sound(snd_music, 1, true)
track2 = audio_play_sound(snd_music_fast, 2, true)
audio_sound_gain(track1,0,0)
audio_sound_gain(track2,0,0)

audio_sound_gain(track1,1,1000)