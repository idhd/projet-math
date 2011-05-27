function A = page_rank_matrice(M, alpha)
    N = sum(M, 'r')
    d = bool2s(N == 0)
    taille = length(d)
    for j=1:size(M, 'c')
        Q(:,j) = M(:,j)/(N(j)+d(j))
    end
    P = Q + ones(d')*d./taille
    A = alpha.*P + (1/taille).*(1-alpha).*ones(M)
endfunction