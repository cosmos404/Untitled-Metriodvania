/// @description Insert description here
// You can write your code in this editor
if (instance_exists(tempFog))
{instance_destroy(tempFog);}

if (height < maxHeight)
{
		var q;
	for(q = 0; q<width;q++)
	{
		instance_create_layer(x+((4*width)*q),y+16*(height),"ObjUnderPlayer",obj_fogCannon);
	}
	height += 1;
	alarm[1] = 1;
}
else
{
//alarm[1] = 150;
//tempFog = instance_create_layer(x,y+16*(height),"ObjOverPlayer",obj_fogBottom);
alarm[0] = randStart;
height = 0;
alarm[1] = randStart+40;
//alarm[2] = 25;
}