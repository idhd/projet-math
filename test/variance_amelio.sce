exec("lib/page_rank_matrice.sce");
exec("lib/methode_puissance_amelio.sce");

M = bool2s(rand(500, 500)<0.5);

Q = matrice_ponderations(M);

n = 100
V = zeros(n, 1);

for i=1:n
    r = methode_puissance_amelio(Q, 0.85, i);
    V(i) = variance(r);
end
plot2d(V)