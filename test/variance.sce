exec("lib/page_rank_matrice.sce");
exec("lib/methode_puissance.sce");

M = bool2s(rand(500, 500)<0.5);

A = page_rank_matrice(M, 0.85);

n = 100
V = zeros(n, 1);

for i=1:n
    r = methode_puissance(A, i);
    V(i) = variance(r);
end
plot2d(V)