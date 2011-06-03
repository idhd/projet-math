exec("lib/page_rank_matrice.sce");
exec("lib/methode_puissance_amelio.sce");
exec("lib/matrice_ponderations.sce");

M = bool2s(rand(500, 500)<0.5);

Q = matrice_ponderations(M);

r = methode_puissance_amelio(Q, 0.85, 100)