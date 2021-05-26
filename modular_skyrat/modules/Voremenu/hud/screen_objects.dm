/obj/screen/voretoggle
	name = "toggle vore mode"
	icon = 'modular_skyrat/modules/Voremenu/icons/voremouth.dmi'
	icon_state = "nom_off"

/obj/screen/voretoggle/update_icon_state()
	if(!iscarbon(usr))
		return
	var/mob/living/carbon/CARBON = usr
	if(CARBON.incapacitated())
		return
	if(CARBON.voremode)
		icon_state = "nom"
	else
		icon_state = "nom_off"
