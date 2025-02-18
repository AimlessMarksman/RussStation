// because we really needed to make this more complicated
/obj/item/pinpointer/nuke/pinpointer
	name = "nuclear disk pinpointer pinpointer"
	desc = "A handheld tracking device that locks onto pinpointer signals."

/obj/item/pinpointer/nuke/examine(mob/user)
	. = ..()
	. += "Its tracking indicator reads \"nuclear disk pinpointer\"."
	for(var/obj/machinery/nuclearbomb/bomb in GLOB.machines)
		if(bomb.timing)
			. += "Extreme danger. Arming signal detected. Time remaining: [bomb.get_time_left()]."

/obj/item/pinpointer/nuke/pinpointer/scan_for_target()
	for(var/obj/item/pinpointer/nuke/P in GLOB.pinpointer_list)
		// but wait, i'm a pinpointer too!
		if(target != src)
			target = P
			break
	..()

// did you mean to search for: recursion?
// subtyping the other pinpointer is causing problems, copypaste
/obj/item/pinpointer/nuke/pinpointer_pinpointer
	name = "nuclear disk pinpointer pinpointer pinpointer"
	desc = "A handheld tracking device that locks onto pinpointer signals."

/obj/item/pinpointer/nuke/pinpointer_pinpointer/examine(mob/user)
	. = ..()
	. += "Its tracking indicator reads \"nuclear disk pinpointer pinpointer\"."
	for(var/obj/machinery/nuclearbomb/bomb in GLOB.machines)
		if(bomb.timing)
			. += "Extreme danger. Arming signal detected. Time remaining: [bomb.get_time_left()]."

/obj/item/pinpointer/nuke/pinpointer_pinpointer/scan_for_target()
	for(var/obj/item/pinpointer/nuke/pinpointer/P in GLOB.pinpointer_list)
		target = P
		break
	..()
