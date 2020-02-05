/// @description Insert description here
// You can write your code in this editor
if(!ran){
	for(var i = 1; i < 100; i++){
		var randx = random_range(0,room_width);
		var randy = irandom_range(0,room_height);
		instance_create_layer(randx,randy,"Stars",StarObj);
	}
	ran = true;
}