/// @description Insert description here
// You can write your code in this editor

var f = new dunflr(0);
dungeon_floors = [f];
current_floor = 0;

unit = 36;

enum room_cats {
undiscovered,
discovered,
known,
explored,
exhausted,
not_a_room
}
//undiscovered rooms don't show up on maps at all
//discovered appear as open doors on known rooms
//known rooms show possible loot to be found within
//explored show how long till they can be plundered again
//exhauseted are over hunted locations and won't spawn new loot for a while

//map layout info
//[0001,0011,0110],[0000,0000,1100],[0000,0101,1010],[0001,1110,0000],[0000,1100,0000],[0000,1001,0010]