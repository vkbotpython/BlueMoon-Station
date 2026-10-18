/datum/species/mammal/shadekin
	name = "Shadekin"
	id = SPECIES_SHADEKIN
	say_mod = "mars"
	eye_type = "shadekin"
	mutant_bodyparts = list("mcolor" = "FFFFFF", "mcolor2" = "FFFFFF", "mcolor3" = "FFFFFF", "mam_tail" = "Shadekin", "mam_ears" = "Shadekin", "deco_wings" = "None",
						"taur" = "None", "horns" = "None", "legs" = "Plantigrade", "meat_type" = "Mammalian") // BLUEMOON CHANES - убран хвост, добавленны ноги
	allowed_limb_ids = list("mammal","aquatic","avian","shadekin")
	override_bp_icon = DEFAULT_BODYPART_ICON_ORGANIC
	species_language_holder = /datum/language_holder/shadekin // BLUEMOON ADD - язык Marish

	// BLUEMOON ADD START - Shadekin: перенос механики из S.P.L.U.R.T-tg (modular_zubbers)
	brutemod = 1.2 // хрупкие тела — компенсация за недыхание, ночное зрение и регенерацию
	burnmod = 1.2
	inherent_traits = list(TRAIT_NOBREATH) // в этом билде NOBREATH также убирает лёгкие и защищает от утопления
	mutantears = /obj/item/organ/ears/shadekin // большие уши — уязвимы к громкому шуму
	mutanteyes = /obj/item/organ/eyes/night_vision/shadekin // ночное зрение привязано к органу, как у ящеров
	mutanttongue = /obj/item/organ/tongue/shadekin
	mutant_brain = /obj/item/organ/brain/shadekin // регенерация в темноте живёт в мозге, как в оригинале
	// BLUEMOON ADD END

/datum/species/mammal/shadekin/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	. = ..()
	RegisterSignal(C, COMSIG_MOB_SAY, PROC_REF(handle_speech))
	C.set_active_language(/datum/language/marish) // BLUEMOON ADD - Marish по умолчанию для расы

/datum/species/mammal/shadekin/on_species_loss(mob/living/carbon/human/C)
	. = ..()
	UnregisterSignal(C, COMSIG_MOB_SAY)

/datum/species/mammal/shadekin/proc/handle_speech(datum/source, list/speech_args)
	SIGNAL_HANDLER
	speech_args[SPEECH_SPANS] |= SPAN_SHADEKINVOICE
