/*
 * Органы расы Shadekin.
 *
 * Портировано из S.P.L.U.R.T-tg (modular_zubbers) и переписано под организую
 * систему BlueMoon: bodypart_overlay / languages_native / eye_icon_state здесь
 * не поддерживаются, поэтому остались только те поля, которые реально работают
 * (урон ушей, say_mod, ночное зрение через see_in_dark).
 */

/obj/item/organ/ears/shadekin
	name = "shadekin ears"
	ru_name = "уши шейдкина"
	ru_name_capital = "Уши шейдкина"
	desc = "Ears covered in soft fur. Their owner hears a little too well for their own good."
	icon = 'icons/obj/clothing/hats.dmi'
	icon_state = "kitty"
	damage_multiplier = 2.5 // большие уши легко повредить громким звуком

/obj/item/organ/tongue/shadekin
	name = "shadekin tongue"
	ru_name = "язык шейдкина"
	ru_name_capital = "Язык шейдкина"
	desc = "A mysterious tongue, soft and oddly warm. It shapes the drawn-out syllables of Marish."
	say_mod = "mars"
	say_mod_ru = "мурлычет"

/obj/item/organ/eyes/night_vision/shadekin
	name = "shadekin eyes"
	ru_name = "глаза шейдкина"
	ru_name_capital = "Глаза шейдкина"
	desc = "Massive eyes that feel warm to the touch. They drink in what little light there is."

// Регенерация в темноте: мозг проверяет освещённость и обновляет статус-эффект,
// тот лечит на применении/обновлении и держит HUD-алерт.
/obj/item/organ/brain/shadekin
	name = "shadekin brain"
	ru_name = "мозг шейдкина"
	ru_name_capital = "Мозг шейдкина"
	desc = "A mysterious brain that seems to drink in the dark."
	var/applied_status = /datum/status_effect/shadekin_regeneration

/obj/item/organ/brain/shadekin/on_life(seconds_per_tick, times_fired)
	. = ..()
	if(!owner || !isturf(owner.loc))
		return
	var/turf/owner_turf = owner.loc
	if(owner_turf.get_lumcount() < SHADOW_SPECIES_LIGHT_THRESHOLD)
		owner.apply_status_effect(applied_status)

/datum/status_effect/shadekin_regeneration
	id = "shadekin_regeneration"
	duration = 2 SECONDS
	status_type = STATUS_EFFECT_REFRESH
	alert_type = /atom/movable/screen/alert/status_effect/shadekin_regeneration

/datum/status_effect/shadekin_regeneration/on_apply()
	. = ..()
	if(!.)
		return FALSE
	heal_owner()
	return TRUE

/datum/status_effect/shadekin_regeneration/refresh()
	. = ..()
	heal_owner()

/datum/status_effect/shadekin_regeneration/proc/heal_owner()
	if(!owner)
		return
	owner.heal_overall_damage(brute = 0.5, burn = 0.5, only_organic = TRUE)

/atom/movable/screen/alert/status_effect/shadekin_regeneration
	name = "Dark Regeneration"
	desc = "The darkness soothes your wounds."
	icon = 'modular_splurt/icons/mob/shadekin_alerts.dmi'
	icon_state = "lightless"
