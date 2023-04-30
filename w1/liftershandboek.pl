took_part(fenchurch,dining_at_the_of_the_universe).
took_part(fenchurch,space_travel_west_spiral_arm).
took_part(fenchurch,developping_inprobability_drive).
took_part(fenchurch,tea_party).
took_part(fenchurch,getting_down_on_friday).
took_part(fenchurch,throwback_sportpladijs).
took_part(fenchurch,vogon_poetry_night).

took_part(slartibartfast,the_42_club).
took_part(slartibartfast,developping_bistromatics).
took_part(slartibartfast,developping_inprobability_drive).
took_part(slartibartfast,visiting_magretea).
took_part(slartibartfast,learning_brid_language).
took_part(slartibartfast,throwback_sportpladijs).
took_part(slartibartfast,drawing_hooloovoos).

took_part(zaphod_beeblebrox,painting_the_hart_of_gold).
took_part(zaphod_beeblebrox,debugging_eddy).
took_part(zaphod_beeblebrox,stealing_a_spaceship).
took_part(zaphod_beeblebrox,tea_party).
took_part(zaphod_beeblebrox,getting_down_on_friday).
took_part(zaphod_beeblebrox,summoning_a_bowl_of_petunias).
took_part(zaphod_beeblebrox,vogon_poetry_night).

took_part(marvin,dining_at_the_of_the_universe).
took_part(marvin,developping_bistromatics).
took_part(marvin,stealing_a_spaceship).
took_part(marvin,tea_party).
took_part(marvin,hyperspace_bypassing).
took_part(marvin,throwback_sportpladijs).
took_part(marvin,repairing_marvin).

took_part(trillian,the_42_club).
took_part(trillian,getting_lenses).
took_part(trillian,the_bag_party).
took_part(trillian,visiting_the_raingod).
took_part(trillian,hyperspace_bypassing).
took_part(trillian,looking_at_stars).
took_part(trillian,drawing_hooloovoos).

took_part(tricha_mc_millen,painting_the_hart_of_gold).
took_part(tricha_mc_millen,debugging_eddy).
took_part(tricha_mc_millen,the_bag_party).
took_part(tricha_mc_millen,tea_party).
took_part(tricha_mc_millen,hyperspace_bypassing).
took_part(tricha_mc_millen,summoning_a_bowl_of_petunias).
took_part(tricha_mc_millen,vogon_poetry_night).

took_part(arthur_dent,dining_at_the_of_the_universe).
took_part(arthur_dent,space_travel_west_spiral_arm).
took_part(arthur_dent,developping_inprobability_drive).
took_part(arthur_dent,visiting_magretea).
took_part(arthur_dent,learning_brid_language).
took_part(arthur_dent,looking_at_stars).
took_part(arthur_dent,repairing_marvin).


day(dining_at_the_of_the_universe,monday).
day(the_42_club,monday).
day(painting_the_hart_of_gold,monday).
day(space_travel_west_spiral_arm,tuesday).
day(developping_bistromatics,tuesday).
day(getting_lenses,tuesday).
day(debugging_eddy,tuesday).
day(developping_inprobability_drive,wednesday).
day(stealing_a_spaceship,wednesday).
day(the_bag_party,wednesday).
day(tea_party,thursday).
day(visiting_the_raingod,thursday).
day(visiting_magretea,thursday).
day(getting_down_on_friday,friday).
day(hyperspace_bypassing,friday).
day(learning_brid_language,friday).
day(throwback_sportpladijs,saturday).
day(summoning_a_bowl_of_petunias,saturday).
day(looking_at_stars,saturday).
day(vogon_poetry_night,sunday).
day(drawing_hooloovoos,sunday).
day(repairing_marvin,sunday).

have_met(X, Y) :-
    X \== Y,
    took_part(X, A),
    took_part(Y, A).

dif_place(X, Y, Day) :-
    took_part(X, A),
    took_part(Y, B),
    day(A, Day),
    day(B, Day),
    A \== B.

did_not_meet(X, Y) :- \+ have_met(X, Y).
