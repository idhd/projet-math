exec("lib/page_rank_matrice.sce");
exec("lib/methode_puissance.sce");

M = bool2s(rand(500, 500)<0.5);

A = page_rank_matrice(M, 0.85);

r = methode_puissance(A, 100)