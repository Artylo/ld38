randomize();
game_init();
instance_create(0,0,director);

global.first = instance_create(room_width/2, room_height/2, o_Planet);

if(instance_exists(o_Planet))
{
    var first_planet = instance_find(o_Planet,0);
    var pX = first_planet.x + lengthdir_x(first_planet.planet_surface_radius,90);
    var pY = first_planet.y + lengthdir_y(first_planet.planet_surface_radius,90);
    instance_create(pX,pY,o_Player);
    o_Player.player_current_planet = first_planet;
    o_Player.direction = 90;
    
    var pX = first_planet.x + lengthdir_x(first_planet.planet_surface_radius,irandom(360));
    var pY = first_planet.y + lengthdir_y(first_planet.planet_surface_radius,irandom(360));
    instance_create(pX,pY,o_House);
    o_House.image_angle = point_direction(o_House.x,o_House.y,first_planet.x,first_planet.y)+90;
    o_House.current_planet = first_planet;
}


var inst, oinst;
repeat(100)
{
    inst = instance_create(irandom(room_width), irandom(room_height), o_Planet);
    if(instance_exists(inst))
    {
        if(point_distance(first_planet.x,first_planet.y,inst.x,inst.y) < first_planet.planet_size*first_planet.planet_size_mod + inst.planet_size*inst.planet_size_mod)
        {   
            with inst
            {
                instance_destroy();
            }
        }
    }
}

for(var i = 0; i < instance_number(o_Planet)-1; i++)
{
    inst  = instance_find(o_Planet,i);
    oinst = instance_find(o_Planet,i+1);
    if(instance_exists(inst) and instance_exists(oinst))
    {
        if(point_distance(oinst.x,oinst.y,inst.x,inst.y) < oinst.planet_size*oinst.planet_size_mod + inst.planet_size*inst.planet_size_mod)
        {
            with(inst)
            {
                instance_destroy();
            }
        }
    }
}
