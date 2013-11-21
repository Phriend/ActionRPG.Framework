
// File:    _world.dm
// Library: Forum_account.ActionRpgFramework
// Author:  Forum_account
//
// Contents:
//   Miscellaneous global stuff.

var
	Constants/Constants = new()
	Options/Options = new()

world
	view = "40x25"
	mob = /mob/temporary

client
	New()
		..()
//		GetWidthHeight()
		view = "[VIEW_WIDTH]x[VIEW_HEIGHT]"

/*client
	proc
		GetWidthHeight(client/c)
			if(c.screen_size == 1)
				Constants.VIEW_WIDTH = Constants.VIEW_WIDTH2
				Constants.VIEW_HEIGHT = Constants.VIEW_HEIGHT2
			if(c.screen_size == 0.5)
				Constants.VIEW_WIDTH = Constants.VIEW_WIDTH1
				Constants.VIEW_HEIGHT = Constants.VIEW_HEIGHT1
*/
Options
	var
		// 1 if you want the space bar to open the inventory screen
		// when there's nothing else to interact with, 0 if you don't
		space_opens_inventory = 0

		// This controls how long a medal is shown on the screen after
		// earning one. The default value is 30 (3 seconds).
		medal_display_time = 30

		// This is the message shown at the bottom of a prompt() window
		// when it doesn't have any buttons.
		prompt_continue_message = "<text align=center>Press the Space Bar to continue.</text>"

		title_screen = "title-screen"
