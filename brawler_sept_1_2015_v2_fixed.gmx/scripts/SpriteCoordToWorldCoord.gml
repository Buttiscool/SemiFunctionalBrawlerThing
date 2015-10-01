///SpriteCoordToWorldCoord(x,y)
/*
    creates a vec2 from a cord (x,y) taken from the sprite (use the sprite editor and look at the coord in the status bar
    the coord returnd is relative to the instance position and relative to the sprite origins
*/
return tmc_vec2(argument0-sprite_xoffset+x,argument1-sprite_yoffset+y);
