exec("lib/page_rank_matrice.sce");

M = bool2s(rand(500, 500)<0.5);

A = page_rank_matrice(M, 0.85)