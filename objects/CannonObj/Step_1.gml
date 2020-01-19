/// @description Insert description here
// You can write your code in this editor
x = HPlanetObj.x;
y = HPlanetObj.y - 55;

image_angle = point_direction(x,y,mouse_x,mouse_y)

if(mouse_check_button(mb_left) && !Fired){
	Fired = true;
	with(instance_create_layer(x,y,"Ship",ShipObj)){
		speed = 10;
		direction = other.image_angle;
		image_angle = direction;
	}
}