// Basis for lewd mob transformations
// Intending on using this to lower the amount of space being taken up here to something more managable
/datum/disease/transformation/lewd
	name = "Lewdity Incarnated"
	desc = "If you're seeing this then chances are something has gone wrong, now stop poking around in the code!"
	cure_text = "That which kills arousal"
	cures = list(/datum/reagent/drug/aphrodisiac/camphor) // Only that which kills arousal will cure the virus.
	cure_chance = 25
	stage_prob = 2.5
	severity = DISEASE_SEVERITY_BIOHAZARD
	visibility_flags = NONE

/datum/disease/transformation/lewd/stage_act(seconds_per_tick, times_fired)
	. = ..()
	if(!.)
		return

	switch(stage)
		if(2)
			if(SPT_PROB(2.5, seconds_per_tick))
				affected_mob.emote("growl")
			if(SPT_PROB(10, seconds_per_tick))
				affected_mob.reagents.add_reagent_list(list(/datum/reagent/drug/aphrodisiac/crocin = 5))
		if(3)
			if(SPT_PROB(2.5, seconds_per_tick))
				affected_mob.emote("moan")
			if(SPT_PROB(10, seconds_per_tick))
				affected_mob.reagents.add_reagent_list(list(/datum/reagent/drug/aphrodisiac/crocin = 5))
		if(4)
			if(SPT_PROB(2.5, seconds_per_tick))
				affected_mob.emote("lewdmoan")
			if(SPT_PROB(10, seconds_per_tick))
				affected_mob.reagents.add_reagent_list(list(/datum/reagent/drug/aphrodisiac/crocin/hexacrocin = 0.5)) // Primarily to try and not overdose and bimbofy someone before the virus has finished converting them

// Male Deathclaw Version
/datum/disease/transformation/lewd/funclaw
	name = "Ravishing Deathclaw Transformation"
	agent = "Ravishing Forced Evolution"
	desc = "A terrible disease known to override the subjects inhibitions, curing is preferred, least the station ends up a breeding den."
	stage1 = list("You catch yourself tasting the air")
	stage2 = list("Your pants are growing a bit too tight as something is growing")
	stage3 = list(
		span_danger("Your eyes can't stop staring at people close by."),
		span_danger("Your libido is acting up."),
		span_danger("You catch yourself almost lunging for someone."),
	)
	stage4 = list(
		span_danger("Your pants are starting to rip."),
		span_danger("You feel the need to rut and breed.")
	)
	stage5 = list(span_danger("You roar as you claw your way from your former form, eager to BREED."))
	new_form = /mob/living/basic/deathclaw/funclaw

// Female Deathclaw Version
/datum/disease/transformation/lewd/mommyclaw
	name = "Motherly Deathclaw Transformation"
	agent = "Forced Motherly Evolution"
	desc = "A terrible disease known to override the subjects inhibitions, slowly pushing them more and more into being motherly, curing is somewhat suggested, least you end up being seen as their spawn!"
	stage1 = list("You catch yourself tasting the air")
	stage2 = list("Your breasts are growing!")
	stage3 = list(
		span_danger("Your eyes can't stop staring at people with a desire to smother them."),
		span_danger("Your libido is acting up."),
		span_danger("You catch yourself almost lunging for someone to cuddle."),
	)
	stage4 = list(
		span_danger("Milk seems to be running from your breasts."),
		span_danger("You feel the need to be breed and mother people.")
	)
	stage5 = list(span_danger("You roar as you claw your way from your former form, eager to NURSE."))
	new_form = /mob/living/basic/deathclaw/funclaw/femclaw/mommyclaw

// Male Werewolf Version
/datum/disease/transformation/lewd/funwolf
	name = "Ravishing Lycanthopy"
	agent = "Ravishing Lycanthopy"
	desc = "A terrible disease known to override the subjects inhibitions, curing is preferred, least the station ends up a breeding den."
	stage1 = list("You catch yourself tasting the air")
	stage2 = list("Your pants are growing a bit too tight as something is growing")
	stage3 = list(
		span_danger("Your eyes can't stop staring at people close by."),
		span_danger("Your libido is acting up."),
		span_danger("You catch yourself almost lunging for someone."),
	)
	stage4 = list(
		span_danger("Your pants are starting to rip."),
		span_danger("You feel the need to rut and breed.")
	)
	stage5 = list(span_danger("You roar as you claw your way from your former form, eager to hunt for the pack and to breed~"))
	new_form = /mob/living/basic/werewolf/funwolf/alpha

// Female Werewolf Version
/datum/disease/transformation/lewd/bitchwolf
	name = "Motherly Lycanthopy"
	agent = "Motherly Lycanthopy"
	desc = "A terrible disease known to override the subjects inhibitions, slowly pushing them more and more into being motherly, curing is somewhat suggested, least you end up being seen as their spawn!"
	stage1 = list("You catch yourself tasting the air")
	stage2 = list("Your breasts are growing!")
	stage3 = list(
		span_danger("Your eyes can't stop staring at people with a desire to smother them."),
		span_danger("Your libido is acting up."),
		span_danger("You catch yourself almost lunging for someone to cuddle."),
	)
	stage4 = list(
		span_danger("Milk seems to be running from your breasts."),
		span_danger("You feel the need to bend over.")
	)
	stage5 = list(span_danger("You roar as you claw your way from your former form, eager to BREED."))
	new_form = /mob/living/basic/werewolf/funwolf/bitch
