/// @description Insert description here
// You can write your code in this editor
var PlanetDist,PlanetToward, PlanetPull;
var factor = 600;

if(instance_exists(ShipObj)){
	shipDistance = point_distance(ShipObj.x,ShipObj.y,x,y);
	
	PlanetToward = point_direction(ShipObj.x,ShipObj.y,x,y);
	PlanetPull = factor*(1/power(shipDistance,1.6));
	PlanetPull = PlanetPull*PlanetGravity;
	
	with(ShipObj){
		motion_add(PlanetToward,PlanetPull);
	}
}