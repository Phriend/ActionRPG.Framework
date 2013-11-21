mob/verb
	ViewUpdates()
		set hidden=1
		src<<browse({"
			<title>MyFramework Update Notes</title>
			<body link=blue alink=blue vlink=blue>
			<font face="courier" size=1 color=[rgb(150,150,180)]>

			Recent Updates - Most Recent at Top<br>
			<b>Help Keep the Game Running Smoothly<br>
			Post any Bugs you Find on the Forums</b><br>
			<a href="http://www.byond.com/members/Gandalf_the_Grey/forum" target="Z">Report A Bug</a><p>

			11-20-13<br>
			-Version 0.1<br>

			-Started Interface - 10% complete<br>
			-Added my own terminal window<br>
			-<br>
			-Fixed Bugs:<br>
			* Fixxed Screensize Options - Didn't take aspect ratio into account (Should work now)<br>
			* Fixxed Autojoin for atom/movable - Simple Spawn proc addition<br>

			"},"window=News;size=600x600")

/*UpdateBox
	parent_type = /HudBox

	var
		HudObject/updatetitle
		HudObject/updatebody
		HudObject/updates

	New(mob/m)
		..(m)

		box(6, 3)

		owner = m

		// display your level, class, money, and experience
		updatetitle = add(12, 40, maptext_width = width * 32 - 24, layer = layer + 1)
		updatebody = add(12, 24, maptext_width = width * 32 - 24, layer = layer + 1)
//		experience = add(12, 8, maptext_width = width * 32 - 24, layer = layer + 1)

		refresh()

		pos(Constants.VIEW_WIDTH * Constants.ICON_WIDTH - 128 - 16, 16)

	proc
		refresh()
			updatetitle.maptext = "<b></b>"
			updatebody.maptext = "Money: $[owner.money]"
//			experience.maptext = "XP: [owner.experience] / [owner.experience_needed]"
mob
	var
		tmp/UpdateBox/update_box
//		tmp/last_move_time = 0

	movement()
		..()

		if(info_box)
			if(moved)
				last_move_time = world.time

			if(world.time > last_move_time + Constants.INFO_BOX_DELAY)
				info_box.show()
			else
				info_box.hide()

	init_hud()
		..()

		if(client && Constants.USE_INFO_BOX)
			info_box = new(src)

	clear_hud()
		..()

		if(Constants.USE_INFO_BOX)
			if(info_box)
				info_box.hide()
				del info_box
*/