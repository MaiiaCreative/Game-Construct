if image_alpha<=0{
	alpha=true
}
if image_alpha>=1{
	alpha=false
}

if alpha=true{
	image_alpha+=0.05
}else image_alpha-=0.05

if mouse_check_button_pressed(mb_any)
	{
		global.menu=1
		global.generate_enemy=false
		obj_control.wait_moment=true
		room_restart()
	}
