draw_self()

draw_set_font(fnt_bahnscrift)
draw_set_halign(fa_middle)
	if instance_exists(obj_player){
			if mouse_check_button(mb_right) && global.menu=false
				{
					draw_text_transformed_color(x,y-32,obj_player.HP,1.4,1,0,c_red,c_red,c_red,c_red,1)
				}
			else{}
		}
draw_set_font(-1)
draw_set_halign(-1)
//draw_text_transformed(50,450,alarm[0],1,1,0)
	
draw_set_font(fnt_caviar_dreams)
draw_set_halign(fa_middle)
if warning=1{
		draw_text_ext_transformed_color(x,y+50,"Segure    para ver seu núcleo",30,230,size,size,0,c_white,c_white,c_white,c_white,alpha) 
		draw_sprite_ext(spr_mouse,1,x+3,y+73,size+0.5,size+0.5,0,c_white,alpha)
		}
if warning=2 draw_text_ext_transformed_color(x,y+50,"Proteja seu núcleo",30,230,size,size,0,c_white,c_white,c_white,c_white,alpha)

draw_set_font(-1)
draw_set_halign(-1)