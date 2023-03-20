gruzielement(horcrux,riddles_diary,harry,basilisks_fang,chamber_of_secrets,hp_chamber_of_secrets).
gruzielement(horcrux,gaunts_ring,albus,gryffindor_sword,headmasters_office,hp_half_blood_prince).
gruzielement(horcrux,slytherins_locket,ronald,gryffindor_sword,forest_of_dean,hp_deathly_hallows_I).
gruzielement(horcrux,huffelpuff_cup,hermione,basilisks_fang,chamber_of_secrets,hp_deathly_hallows_II).
gruzielement(horcrux,ravenclaws_diadem,vincent,friendfyre,room_of_requirement,hp_deathly_hallows_II).
gruzielement(horcrux,snake_nagini,neville,gryffindor_sword,hogwarts,hp_deathly_hallows_II).
gruzielement(pseudo_horcrux,harry,voldemort,avada_kedavra,hidden_forest,hp_deathly_hallows_II).

horcrux(X) :-
    gruzielement(_, X, _, _, _, _).

pseudo_horcrux(X) :-
    gruzielement(pseudo_horcrux, X, _, _, _, _).

destroyed(Element, Wie, Wat, Waar) :-
    gruzielement(_, Element, Wie, Wat, Waar, _).

destroyed_in(Naam, Film) :-
    gruzielement(_, Naam, _, _, _ ,Film).

same_movie(Naam1, Naam2) :-
    gruzielement(_, Naam1, _, _, _, X),
    gruzielement(_, Naam2, _, _, _, X).