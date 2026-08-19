draw_self()

draw_set_font(fnt_blackout)
draw_text_transformed_color(x+94,y-38,int64(global.score),1,1,0,c_white,c_white,c_white,c_white,alpha) //else draw_text_transformed_color(room_width/2+94,room_height/2-38,int64(global.score),1,1,0,c_white,c_white,c_white,c_white,alpha)
draw_set_font(-1)

/*
if write_highscore=true
	{
		draw_text(room_height/2,room_width/2,highscore)		
	}else{
		
	}