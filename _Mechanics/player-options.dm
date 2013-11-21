
client
	var
		sound_volume = 1
		music_volume = 1
		screen_size = 1
//		screen_zoom = 1
		VIEW_WIDTH = 40
		VIEW_HEIGHT = 25
	proc
		sound_volume(v)
			if(v > 1.0)
				v = 1.0
			else if(v < 0)
				v = 0

			sound_volume = v

		music_volume(v)
			if(v > 1.0)
				v = 1.0
			else if(v < 0)
				v = 0

			music_volume = v
			mob.music(null)
/*
0.5
	640
	400
	20x12.5 > 13 with + 16 to height
0.75
	960
	600
	30x18.75 > 19 with + 8 to height
1.0
	1280
	800
	40x25

Right now, my screen_size is as above.and can only go from 0.5 to 1.0 in increments of 0.25
*/

		screen_size(s)
			if(s < 0.5)
				s = 0.5
			else if(s > 1.0)
				s = 1.0

			screen_size = s

			if(screen_size == 1)
				var/width = 1280
				var/height = 800
				VIEW_WIDTH = Constants.VIEW_WIDTH1 //VIEW_WIDTH & VIEW_HEIGHT are no longer const's
				VIEW_HEIGHT = Constants.VIEW_HEIGHT1 // but are still being held in the Constant datum as regular vars
				winset(src, "default", "size=[width]x[height]")
//				winset(src, "default.map", "view=40x25")
				src.view = "40x25"
//				mob.clear_hud()
//				mob.init_hud()
			if(screen_size == 0.75)
				var/width = 960
				var/height = 600 + 8
				src.view = "30x19"
				VIEW_WIDTH = Constants.VIEW_WIDTH2
				VIEW_HEIGHT = Constants.VIEW_HEIGHT2
				winset(src, "default", "size=[width]x[height]")
//				winset(src, "default.map", "icon-size=30x19")
//				src.view = "30x19"
//				mob.clear_hud()
//				mob.init_hud()
			if(screen_size == 0.5)
				var/width = 640
				var/height = 400 + 16
				src.view = "20x13"
				VIEW_WIDTH = Constants.VIEW_WIDTH3
				VIEW_HEIGHT = Constants.VIEW_HEIGHT3
				winset(src, "default", "size=[width]x[height]")
//				winset(src, "default.map", "icon-size=20x13")
				src.view = "20x13"
//				mob.clear_hud()
//				mob.init_hud()

//			refresh_huds()
//				..()


//The comments above are a few of my latest attempts at getting world.view to change properly