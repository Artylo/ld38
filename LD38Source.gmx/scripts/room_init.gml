randomize();
game_init();

instance_create(room_width/2, room_height/2, o_Planet);

if(instance_exists(o_Planet))
{
    var first_planet = instance_find(o_Planet,0);
    var pX = first_planet.x + lengthdir_x(first_planet.planet_surface_radius,90);
    var pY = first_planet.y + lengthdir_y(first_planet.planet_surface_radius,90);
    instance_create(pX,pY,o_Player);
    o_Player.player_current_planet = first_planet;
}
