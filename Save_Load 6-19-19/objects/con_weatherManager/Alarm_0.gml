/// @description Insert description here
// You can write your code in this editor
var xcreate, ycreate, xcreate2, ycreate2,sizeOfText,tempTime,tempTime2;
xcreate = camera_get_view_x(view_camera[0]);
ycreate = camera_get_view_y(view_camera[0]);
xcreate2 = camera_get_view_width(view_camera[0]);
ycreate2 = camera_get_view_height(view_camera[0]);

instance_create_layer(xcreate,ycreate,"ObjOverPlayer",obj_lightningFlash);

if (global.weatherRainingHard == true)
{

		tempTime = random_range(100,2000);
		tempTime2 = ((2*tempTime)/3);
		alarm[0] = tempTime;
		alarm[1] = tempTime2;
}