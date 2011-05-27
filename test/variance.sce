n = 100
V = zeros(n, 1);

for i=1:n
    r = methode_puissance(A2, i);
    N = sum(M, 'c');
    plot2d(N, r, -1)
    //V(i) = variance(r);
end
V