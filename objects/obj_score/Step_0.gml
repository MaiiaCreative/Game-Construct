if instance_exists(obj_player){
alpha=clamp(alpha,0.2,1)

if distance_to_object(obj_player)<60
	{
		alpha-=0.1
	}else alpha+=0.1
	
image_alpha=alpha

if global.menu=0 

global.score+=0.01

}else{
	//image_alpha=0
	//alpha=0
	//write_highscore=true
}
/*
if write_highscore=	true
	{
		highscore = keyboard_string
		if string_length(highscore)>10
			{
				highscore = string_copy(highscore, 1, 10)
			}
	}highscore = keyboard_string
		
		

