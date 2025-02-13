// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dunflr(index) constructor{
	map_layout = generate_map(index);
	map_explore = mark_exploration_start(index,map_layout); //need also a version of this script that loads explore data from save file
	floor_name = "Tutorial Babrynth";
	exit_found = false;
	second_exit_found = false;
	exit_leads_to = noone;
	wid = array_length(map_layout[0]);
	hei = array_length(map_layout);
	//debug
	wid =3
	hei = 6;
}

function generate_map(index){
	var mp = [];
	switch(index){
		case 1: mp = [[0001,0011,0110],[0000,0000,1100],[0000,0101,1010],[0001,1110,0000],[0000,1100,0000],[0000,1001,0010]]; break;
		default: mp = [[0001,0011,0110],[0000,0000,1100],[0000,0101,1010],[0001,1110,0000],[0000,1100,0000],[0000,1001,0010]]; 
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