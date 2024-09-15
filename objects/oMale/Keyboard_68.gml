/// @description Insert description here
// You can write your code in this editor

if (!keyboard_key_press(ord("D"))){
	audio_play_sound(sWalk, 1, 0, 50, 0);
} else {
	audio_stop_sound(sWalk)
}