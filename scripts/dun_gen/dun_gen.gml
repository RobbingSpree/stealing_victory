// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dunflr(index) constructor{
	map_layout = generate_map(index);
	map_explore = mark_exploration_start(index,map_layout); //need also a version of this script that loads explore data from save file
	floor_name = "Tutorial Babrynth";
	exit_found = false;
	second_exit_found = false;
	exit_leads_to = noone;
	exit_x = -1;
	exit_y = -1;
	entrance_x = 0;
	entrance_y = 0;
	wid = array_length(map_layout[0]);
	hei = array_length(map_layout);
	//fill rooms with details
	
	
	//debug
	wid =3
	hei = 6;
}

function generate_map(index){
	var mp = [];
	switch(index){
		case 1: mp = [[0b0001,0b0011,0b0110],[0b0000,0b0000,0b1100],[0b0000,0b0101,0b1010],[0b0001,0b1110,0b0000],[0b0000,0b1100,0b0000],[0b0000,0b1001,0b0010]]; break;
		default: mp = [[0b0001,0b0011,0b0110],[0b0000,0b0000,0b1100],[0b0000,0b0101,0b1010],[0b0001,0b1110,0b0000],[0b0000,0b1100,0b0000],[0b0000,0b1001,0b0010]]; 
	}
	return mp;
}

function mark_exploration_start(index,mp){
	var me =[];
	switch (index) {
		case 1: me = [[4,2,2],[5,5,1],[5,0,0],[0,0,5],[5,0,5],[5,0,0]]; break;
		default: me = [[4,2,2],[5,5,1],[5,0,0],[0,0,5],[5,0,5],[5,0,0]]; break;
	}
	return me;
}

function fill_rooms(index) {
	
}