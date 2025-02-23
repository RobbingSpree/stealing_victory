/// @description Insert description here
// You can write your code in this editor

var f = new dunflr(0);
dungeon_floors = [f];
current_floor = 0;

unit = 36;

player_x = -1;
player_y = -1;

entrance_x = 0;
entrance_y = 0;

enum room_cats {
undiscovered,
discovered,
known,
explored,
exhausted,
not_a_room,
hidden
}
//undiscovered rooms don't show up on maps at all
//discovered appear as open doors on known rooms
//known rooms show possible loot to be found within
//explored show how long till they can be plundered again
//exhauseted are over hunted locations and won't spawn new loot for a while
//not a room used to mark empty cells in the map that will never connect to a valid doorway
//hidden above not a room so hidden rooms aren't able to be drawn ever until the appropriate flag marks them as discovered

//map layout info
//[0001,0011,0110],[0000,0000,1100],[0000,0101,1010],[0001,1110,0000],[0000,1100,0000],[0000,1001,0010]