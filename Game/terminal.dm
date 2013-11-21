client
    var
        resolution = ""
        resolution_width = 0
        resolution_height = 0

    Topic(href, href_list[])
        if(href_list["action"] == "resolution")
            resolution_width = text2num(href_list["width"])
            resolution_height = text2num(href_list["height"])
            resolution = "[resolution_width]x[resolution_height]"

    proc/getResolution()
        src << browse("<html><head><script type='text/javascript'>window.location='?action=resolution;width='+screen.width+';height='+screen.height+''</script></head></html>", "window=resolution;border=0;size=0x0;can_close=0;can_resize=0;can_minimize=0;titlebar=0")
        while(!resolution) sleep(world.tick_lag)
        src << browse(null, "window=resolution")

mob
    Login()
        client.getResolution()
        ..()
mob
	var
		viewterm1 = 0
		viewterm2 = 0
		viewterm3 = 0
		viewterm4 = 0


mob/Stat()
	var/cres = winget(src, "default", "size")
	statpanel("terminal info")
//	sleep(world.tick_lag)
	stat("Graphics","")
//	if(!mob/temporary)
//		stat("Computer Resolution:  [client.resolution]","")
	stat("Client Resolution [cres]",	     "")
	stat("Client.view: [client.view]","")
	stat("Screen Size: [client.screen_size]","")
	stat("Screen Ratio: [client.VIEW_WIDTH]x[client.VIEW_HEIGHT]","")
	stat("","")
	stat("Location Info",						  "")
	stat("X:  [src.x]",								"")
	stat("Y:  [src.y]",								"")
	stat("Z:  [src.z]",								"")
	stat("pixel_x:[src.px]",						"")
	stat("pixel_y:[src.py]",						"")
	stat("pixel_z:[src.pz]",						"")
	stat("","")