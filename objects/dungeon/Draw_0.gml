/// @description Insert description here
// You can write your code in this editor

draw_sprite(room_hilight_spr,0,x+player_x*unit,y+player_y*unit);
//debug
draw_text(20,20,player_x);
draw_text(20,40,player_y);


//draw the dungeon layout
for (var i=0; i<dungeon_floors[current_floor].wid; i++) {
	for (var k=0; k<dungeon_floors[current_floor].hei; k++) {
		var cel = dungeon_floors[current_floor].map_layout[k,i];
		var cel_ex = dungeon_floors[current_floor].map_explore[k,i];
		if cel_ex != 5 {
			 //draw_known_room_debug(cel,i,k);
			if cel & 0b0001 { //right 
				draw_sprite_ext(dungeon_layout_spr,0,x+i*unit,y+k*unit,1,1,270,c_white,1);
			} else
				draw_sprite_ext(dungeon_layout_spr,1,x+i*unit,y+k*unit,1,1,270,c_white,1);
			if cel & 0b0010 { //left
				draw_sprite_ext(dungeon_layout_spr,0,x+i*unit,y+k*unit,1,1,90,c_white,1);
			} else
				draw_sprite_ext(dungeon_layout_spr,1,x+i*unit,y+k*unit,1,1,90,c_white,1);
			if cel & 0b0100 { //down
				draw_sprite_ext(dungeon_layout_spr,0,x+i*unit,y+k*unit,1,1,180,c_white,1);
			} else
				draw_sprite_ext(dungeon_layout_spr,1,x+i*unit,y+k*unit,1,1,180,c_white,1);
			if cel & 0b1000 { //up
				draw_sprite_ext(dungeon_layout_spr,0,x+i*unit,y+k*unit,1,1,0,c_white,1);
			} else
				draw_sprite_ext(dungeon_layout_spr,1,x+i*unit,y+k*unit,1,1,0,c_white,1);
		}
	}
}

var cel = dungeon_floors[current_floor].map_layout[player_y,player_x];
if cel & 0b0001
	draw_sprite(dungeon_arrow_spr,0,x+120,y);

if cel & 0b0010
	draw_sprite(dungeon_arrow_spr,1,x+120,y);

if cel & 0b0100
	draw_sprite(dungeon_arrow_spr,2,x+120,y);

if cel & 0b1000
	draw_sprite(dungeon_arrow_spr,3,x+120,y);

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