function res = methode_puissance_amelio(Q, alpha, n)
    taille = size(Q, 'r');
    v = rand(taille, 1);
    v = v ./norm(v, 1);
    
    for i=0:n
        v = alpha.*Q*v + (1-norm(alpha.*Q*v, 1)).*ones(taille)./taille;
    end
    res = v;
endfunction