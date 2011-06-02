function A = page_rank_matrice(M, alpha)
    [Q, d] = matrice_ponderations(M);
    taille = length(d);
    P = Q + ones(d')*d./taille;
    A = alpha.*P + (1/taille).*(1-alpha).*ones(M)
endfunction