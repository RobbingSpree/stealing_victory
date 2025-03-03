/// @description Insert description here
// You can write your code in this editor

for (var i=0; i<dungeon_floors[current_floor].wid; i++) {
	for (var k=0; k<dungeon_floors[current_floor].hei; k++) {
		var cel = dungeon_floors[current_floor].map_layout[k,i];
		var cel_ex = dungeon_floors[current_floor].map_explore[k,i];
		if cel_ex != 5 {
			 //draw_known_room_debug(cel,i,k);
			if cel & 0b0001 //right 
				draw_sprite_ext(dungeon_layout_spr,0,x+i*unit,y+k*unit,1,1,270,c_white,1);
			else
				draw_sprite_ext(dungeon_layout_spr,1,x+i*unit,y+k*unit,1,1,270,c_white,1);
			if cel & 0b0010 //left
				draw_sprite_ext(dungeon_layout_spr,0,x+i*unit,y+k*unit,1,1,90,c_white,1);
			else
				draw_sprite_ext(dungeon_layout_spr,1,x+i*unit,y+k*unit,1,1,90,c_white,1);
			if cel & 0b0100 //down
				draw_sprite_ext(dungeon_layout_spr,0,x+i*unit,y+k*unit,1,1,180,c_white,1);
			else
				draw_sprite_ext(dungeon_layout_spr,1,x+i*unit,y+k*unit,1,1,180,c_white,1);
			if cel & 0b1000 //up
				draw_sprite_ext(dungeon_layout_spr,0,x+i*unit,y+k*unit,1,1,0,c_white,1);
			else
				draw_sprite_ext(dungeon_layout_spr,1,x+i*unit,y+k*unit,1,1,0,c_white,1);
		}
	}
}

/*
function draw_known_room(cel,i,k) {
	if cel | 1
		draw_sprite_ext(dungeon_layout_spr,0,x+i*unit,y+k*unit,1,1,0,c_white,1);
	if cel | 2
		draw_sprite_ext(dungeon_layout_spr,0,x+i*unit,y+k*unit,1,1,180,c_white,1);
	if cel | 4
		draw_sprite_ext(dungeon_layout_spr,0,x+i*unit,y+k*unit,1,1,90,c_white,1);
	if cel | 8
		draw_sprite_ext(dungeon_layout_spr,0,x+i*unit,y+k*unit,1,1,270,c_white,1);
		
}

function draw_known_room_debug(cel,i,k) {
	
}