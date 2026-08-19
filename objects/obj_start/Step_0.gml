if image_alpha<=0{
	alpha=true
}
if image_alpha>=1{
	alpha=false
}

if alpha=true{
	image_alpha+=0.05
}else image_alpha-=0.02

if global.menu=false
	{
		instance_destroy()
	}
/*
if keyboard_check_pressed(vk_left)
	{
		size-=0.1
	}
	
if keyboard_check_pressed(vk_right)
	{
		size+=0.2
	}