randomize();
game_init();
instance_create(0,0,director);

instance_create(room_width/2, room_height/2, o_Planet);

if(instance_exists(o_Planet))
{
    var first_planet = instance_find(o_Planet,0);
    var pX = first_planet.x + lengthdir_x(first_planet.planet_surface_radius,90);
    var pY = first_planet.y + lengthdir_y(first_planet.planet_surface_radius,90);
    instance_create(pX,pY,o_Player);
    o_Player.player_current_planet = first_planet;
    
    var pX = first_planet.x + lengthdir_x(first_planet.planet_surface_radius,irandom(360));
    var pY = first_planet.y + lengthdir_y(first_planet.planet_surface_radius,irandom(360));
    instance_create(pX,pY,o_House);
    o_House.image_angle = point_direction(o_House.x,o_House.y,first_planet.x,first_planet.y)+90;
    o_House.current_planet = first_planet;
}

repeat(50)
{
    with (instance_create(irandom(room_width), irandom(room_height), o_Planet))
    {
        for(var i = 0; i < instance_number(o_Planet); i++)
        {
            var inst = instance_find(o_Planet,i);
            if(point_distance(x,y,inst.x,inst.y) < planet_size*planet_size_mod + inst.planet_size*inst.planet_size_mod)
            {
                instance_destroy();
            }
        }
    }
}