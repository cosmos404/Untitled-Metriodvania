
if (global.hookshotUnlocked == true)
{
if (state != pState.swing)
{
if (key_ltrheld)
{
	
w = sprite_get_width(spr_hookChain);
xx = -lengthdir_x(w, ropeAngle);
yy = -lengthdir_y(w, ropeAngle);
countMax = (30*8)/w;
destX = x + xx*countMax;
destY = y + yy*countMax;
var r = scr_collision_line_point(x, y, destX, destY, obj_wall, true, true);
//draw_line(x,y,destX,destY);

if ((r[1] == destX) && (r[2] == destY))
{draw_sprite_ext(spr_canHookWall,1,destX,destY,1,1,ropeAngle-90,c_red,image_alpha);
		draw_sprite_ext(spr_hookshotView,0,x+5,y+10,1,1,ropeAngle+90,image_blend,0.10);
		}
else
{
	//draw_circle_color(r[1],r[2],5,c_green,c_green,true);
	draw_sprite_ext(spr_canHookWall,0,r[1],r[2],1,1,ropeAngle-90,c_green,image_alpha);
	draw_sprite_ext(spr_hookshotView,0,x+5,y+10,1,1,ropeAngle+90,image_blend,0.50);

}
}

if (key_ltr)
{
	
w = sprite_get_width(spr_hookChain);
xx = -lengthdir_x(w, ropeAngle);
yy = -lengthdir_y(w, ropeAngle);
countMax = (30*8)/w;
destX = x + xx*countMax;
destY = y + yy*countMax;
var r = scr_collision_line_point(x, y, destX, destY, obj_wall, true, true);
//draw_line(x,y,destX,destY);


	
if ((r[1] == destX) && (r[2] == destY))
{
	draw_circle(r[1],r[2],5,true);
}
else
{
	draw_circle_color(r[1],r[2],5,c_green,c_green,true);

}
}
}
}
