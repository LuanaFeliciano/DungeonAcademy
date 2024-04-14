if keyboard_check(ord("W")) & place_free(x,y-col){
	y-=spd;
}
if keyboard_check(ord("A")) & place_free(x-col,y){
	x-=spd;
}
if keyboard_check(ord("S")) & place_free(x,y+col){
	y+=spd;
}
if keyboard_check(ord("D")) & place_free(x+col,y){
	x+=spd;
}