
// File:    demo\turfs.dm
// Library: Forum_account.ActionRpgFramework
// Author:  Forum_account
//
// Contents:
//   This file defines the turfs used in the project.
//   There's nothing special here, it's the same kind
//   of definitions you'd see in any project.
obj
	environment
		New()
			..()
			dir = dir8()

			spawn(1)
				if(!density)
					var/n = autojoin47("density")
					if(n > 0)
						overlays += image('shadow-47.dmi', "[n]")
				spawn(1)
					if(density)
						var/n = autojoin16("density")
						if(n < 15)
							overlays += image('walls.dmi', "outline-[n]")

		Dirt_01
			icon = 'env.dmi'
			icon_state = "dirt-01"
			density = 1


		Dirt_02
			icon = 'env.dmi'
			icon_state = "dirt-01"
			density = 1
			pixel_z = 16
turf
	icon = 'turfs.dmi'
	icon_state = "bottom"

	New()
		..()
		dir = dir8()

		if(!density)
			var/n = autojoin47("density")
			if(n > 0)
				overlays += icon('shadow-47.dmi', "[n]")

		else
			var/n = autojoin16("density")
			if(n < 15)
				overlays += icon('walls.dmi', "outline-[n]")

	wall_01
		icon = 'walls.dmi'
		density = 1
		icon_state = "wall-01"
	wall_02
		icon = 'walls.dmi'
		density = 1
		icon_state = "wall-01"
		pixel_z = 16
	stone_01
		icon = 'walls.dmi'
		density = 1
		icon_state = "stone-01"

	wood_01
		icon = 'walls.dmi'
		density = 1
		icon_state = "wood-01"

	/*
	wall_01
		icon = 'walls.dmi'
		icon_state = "wall-01"
		density = 1

	wall_02
		icon = 'walls.dmi'
		icon_state = "wall-02"
		density = 1

	wall_03
		icon = 'walls.dmi'
		icon_state = "wall-03"
		density = 1
	*/

	floor_01
		icon_state = "floor-01"
