if global.gamemode!=GAMEMODES.DEFEND
	{
		instance_destroy()
	}
	
if HP_defender<=0
	{
		instance_destroy(self)
		instance_destroy(obj_player)
	}