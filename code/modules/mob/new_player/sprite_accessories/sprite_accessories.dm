/*

	Hello and welcome to sprite_accessories: For sprite accessories, such as hair,
	facial hair, and possibly tattoos and stuff somewhere along the line. This file is
	intended to be friendly for people with little to no actual coding experience.
	The process of adding in new hairstyles has been made pain-free and easy to do.
	Enjoy! - Doohl


	Notice: This all gets automatically compiled in a list in dna2.dm, so you do not
	have to define any UI values for sprite accessories manually for hair and facial
	hair. Just add in new hair types and the game will naturally adapt.

	!!WARNING!!: changing existing hair information can be VERY hazardous to savefiles,
	to the point where you may completely corrupt a server's savefiles. Please refrain
	from doing this unless you absolutely know what you are doing, and have defined a
	conversion in savefile.dm
*/

/datum/sprite_accessory
	var/icon			// the icon file the accessory is located in
	var/icon_state		// the icon_state of the accessory
	var/preview_state	// a custom preview state for whatever reason

	var/name			// the preview name of the accessory

	// Determines if the accessory will be skipped or included in random hair generations
	var/gender = NEUTER

	// Restrict some styles to specific species
	var/list/species_allowed = list(
		"Human",
		"Machine",
		"Human Hero",
		SYNTH_COLONY,
		SYNTH_COLONY_GEN_ONE,
		SYNTH_COLONY_GEN_TWO,
		SYNTH_COMBAT,
		SYNTH_GEN_ONE,
		SYNTH_GEN_TWO,
		SYNTH_GEN_THREE,
		SYNTH_WORKING_JOE,
		SYNTH_INFILTRATOR
		)

	// Whether or not the accessory can be affected by colouration
	var/do_colouration = 1
	var/selectable = 1
