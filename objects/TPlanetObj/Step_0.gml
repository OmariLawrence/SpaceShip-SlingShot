/// @description Insert description here
// You can write your code in this editor
var shipDistance,PlanetToward, PlanetPull;
var factor = 600;

if(instance_exists(ShipObj)){
	shipDistance = point_distance(ShipObj.x,ShipObj.y,x,y);
	
	PlanetToward = point_direction(ShipObj.x,ShipObj.y,x,y);
	PlanetPull = factor*(1/power(shipDistance,1.6));
	PlanetPull = PlanetPull*PlanetGravity;
	
	if(shipDistance <= 300){
		with(ShipObj){
			motion_add(PlanetToward,PlanetPull);
		}
	}
}

if(collision_circle(x,y,32,ShipObj,false,true)){
	instance_create_layer(512,384,"Text",VictoryObj);
}