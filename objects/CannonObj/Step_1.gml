/// @description Insert description here
// You can write your code in this editor
x = HPlanetObj.x;
y = HPlanetObj.y - 55;

image_angle = point_direction(x,y,mouse_x,mouse_y)

if(mouse_check_button(mb_left) && !instance_exists(ShipObj)){
	Fired = true;
	var rand = random_range(1,100);
	if(rand > 95){
		audio_play_sound(IFML,1,false);
	}else{
		audio_play_sound(lazor,1,false);
	}
	with(instance_create_layer(x,y,"Ship",ShipObj)){
		speed = 10;
		direction = other.image_angle;
		image_angle = direction;
	}
}