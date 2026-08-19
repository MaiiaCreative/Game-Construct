x=room_width/2
y=190


if mouse_check_button_pressed(mb_any) && global.selecting=false
		{
			global.menu=false
			instance_destroy()
		}