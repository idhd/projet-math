A = [0, 0, 1, 0, 1; 1, 0, 1, 0, 0; 1, 0, 0, 1, 1; 0, 0, 0, 0, 0; 1, 0, 0, 0, 0]

function A = PageRankMatrix(M, alpha)
    N = sum(M, 'r')
    d = bool2s(N == 0)
    taille = length(d)
    for j=1:size(M, 'c')
        Q(:,j) = M(:,j)/(N(j)+d(j))
    end
    P = Q + ones(d')*d./taille
    A = alpha.*P + (1/taille).*(1-alpha).*ones(M)
endfunction

function res = methode_puissance(A)
    N = size(A,'r');
    v = rand(N,1);
    v = v ./norm(v);
    for i=0:100
        v = A*v;
    end
    res = v;
endfunction

N = 500;
M = bool2s(rand(N, N)<0.5);

A2 = PageRankMatrix(M, 0.85);

methode_puissance(A2)