/// @description Insert description here
// You can write your code in this editor
// map is 32 columns, 20 r
scr_buttonMovement();
image_speed = 0.1;
x = localx + (global.mmX6 * 1);
y = localy + (global.mmY6 * 18);
if (global.menuLayer2 == true)
{
	visible = true;

if (global.inText == false) 
{

if (canGo == true)
{
/*	
if ((key_right) && (global.mmX4 < 0))
	{
		if (global.mmY4 <=6)
		{
		global.mmX4 += 1;
		canGo = false;
		alarm[0] = 4;
		}
	}

else if (-(key_left) && (global.mmX4 > 0))
	{
		global.mmX4 -= 1;
		canGo = false;
		alarm[0] = 4;
	}
*/
	if ((key_up) && (global.mmY6 > 0))
	{
		global.mmY6 -= 1;
		canGo = false;
		alarm[0] = 4;
	}

else if ((key_down) && (global.mmY6 < 9))
	{
		global.mmY6 += 1;
		canGo = false;
		alarm[0] = 4;
	}
	
}
	

if ((key_attack_released) && (canPress == true) && (!instance_exists(obj_menuTimer)))
{
	canPress = false;
	alarm[1] = 4;
	scr_changingControls();
}
}
		
}
else
{
	visible = false;
}


//draw_sprite(spr_mmCursor,imgspd,localx + (global.mmX * 16), localy + (global.mmY * 16));
if ((global.pause == false) || (global.pauseScreenOn != 4))
{instance_destroy();}