global.day = 1;
global.planets = 0;

global.first = 0;
global.start = false;


global.pp_camera = false;
global.gameWidth = 360;
global.gameHeight = 640;
global.zoom = 1.5;

global.time = 100; // 0-50 > Day ; 50-100 > Night

audio_set_master_gain(0,0.5);
audio_play_sound(choose(m1,m2,m3,m4,m5,m6),0,true);
