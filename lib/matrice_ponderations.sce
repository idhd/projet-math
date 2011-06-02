function [Q, d] = matrice_ponderations(M)
    N = sum(M, 'r');
    d = bool2s(N == 0);
    taille = length(d);
    Q = zeros(M);
    for j=1:size(M, 'c')
        Q(:,j) = M(:,j)/(N(j)+d(j));
    end
endfunction